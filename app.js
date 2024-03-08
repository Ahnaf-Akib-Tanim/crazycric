const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const pgp = require('pg-promise')();
const cors = require('cors');
const multer = require('multer');

const cookieParser = require('cookie-parser');

let currentuserid;
let currentpassword;
const passwordi = 'A#kibtanim123';
const db = pgp({
    user: 'postgres',
    password: passwordi,
    host: 'localhost',
    port: 5432,
    database: 'crazycric',
});

db.connect()
    .then((obj) => {
        console.log('Connected to the database');
        obj.done();
    })
    .catch((error) => {
        console.error('Error connecting to the database:', error.message || error);
    });

const app = express();
const port = 3000;

app.use(express.json());
const corsOptions = {
    origin: 'http://localhost:5173',
    credentials: true,
};

app.use(cors(corsOptions));
app.use(cookieParser());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

const staticFilePath = path.resolve(__dirname, './react/vite-project/public');
app.use(express.static(staticFilePath));
// Assuming the 'player images' folder is now in the 'public' folder of your project
app.use(
    '/images',
    express.static(path.join(__dirname, './react/vite-project/public/player images'))
);
app.use('/newsimage', express.static(path.join(__dirname, './react/vite-project/public/news')));
app.use(
    '/cricketboardimages',
    express.static(path.join(__dirname, './react/vite-project/public/cricketboard_images'))
);
app.use(
    '/seriesimages',
    express.static(path.join(__dirname, './react/vite-project/public/series_images'))
);
app.use('/logo', express.static(path.join(__dirname, './react/vite-project/public/logo.png')));
app.use(
    '/countryimages',
    express.static(path.join(__dirname, './react/vite-project/public/country'))
);
// app.use('/profileimages', express.static(path.join(__dirname, './react/vite-project/public')));
app.use('/profileimages', express.static(path.join(__dirname, './react/vite-project/public')));
app.use(
    '/umpireimages',
    express.static(path.join(__dirname, './react/vite-project/public/umpire_images'))
);
app.use(
    '/stadiumimages',
    express.static(path.join(__dirname, './react/vite-project/public/stadium_images'))
);
app.use(
    '/coachimages',
    express.static(path.join(__dirname, './react/vite-project/public/coach_images'))
);
app.use(
    '/country2images',
    express.static(path.join(__dirname, './react/vite-project/public/country2'))
);
app.use('/back', express.static(path.join(__dirname, './react/vite-project/public/back.jpg')));
// const storage = multer.diskStorage({
//     destination: (req, file, cb) => {
//         cb(null, path.join(staticFilePath, 'profileimages'));
//     },
//     filename: (req, file, cb) => {
//         cb(null, req.body.userId + path.extname(file.originalname));
//     },
// });

// const upload = multer({ storage });
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, staticFilePath); // store the file directly in the 'public' folder
    },
    filename: (req, file, cb) => {
        cb(null, req.body.userId + path.extname(file.originalname));
    },
});

const upload = multer({ storage });

app.post('/user', async (req, res) => {
    const { userId, password } = req.body;
    currentuserid = userId;
    currentpassword = password;
    console.log(currentuserid);
    console.log(currentpassword);

    try {
        const user = await db.oneOrNone(
            'SELECT * FROM Users WHERE userid = $1 AND userpassword = $2',
            [userId, password],
        );

        if (user) {
            res.json({ status: 'success' });
        } else {
            console.log('User not found');
            res.json({ status: 'failure' });
        }
    } catch (error) {
        console.error('Error querying the database:', error.message || error);
        res.status(500).json({ status: 'error' });
    }
});
app.post('/user/signup', upload.single('image'), async (req, res) => {
    console.log(req.file);
    const {
 userId, password, name, country, team, player 
} = req.body;
    console.log(req.body);
    const image = req.file ? `http://localhost:3000/profileimages/${req.file.filename}` : null;
    console.log('Image:', image);
    try {
        const existingUser = await db.oneOrNone('SELECT * FROM Users WHERE userid = $1', [userId]);

        if (existingUser) {
            console.log('User ID already exists');
            res.json({ status: 'failure', message: 'User ID already exists!' });
        } else {
            const user = await db.oneOrNone(
                'INSERT INTO Users (userid, userpassword, username, countryname, favteam, favplayer, image) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING *',
                [userId, password, name, country, team, player, image],
            );

            if (user) {
                res.json({ status: 'success' });
            } else {
                console.log('User not created');
                res.json({ status: 'failure', message: 'User not created' });
            }
        }
    } catch (error) {
        console.error('Error querying the database:', error.message || error);
        res.status(500).json({ status: 'error' });
    }
});
app.post('/user/loggedin/players', async (req, res) => {
    const {
        text,
        team,
        role,
        battingStyle,
        bowlingStyle,
        coach,
        filterMostHundreds,
        filtermost5wickets,
    } = req.body;
    console.log('Search Criteria:', text, team, role, battingStyle, bowlingStyle, coach);
    try {
        let players = await db.any(
            `SELECT player_id, player_name, player_info.team_name, player_image_path, 
            (batting_test_100s + batting_odi_100s + batting_t20_100s) as total_hundreds,
            (bowling_test_5w + bowling_odi_5w + bowling_t20_5w) as total_5w
            FROM player_info 
            JOIN coaches ON player_info.team_name = coaches.coaching_team
            WHERE LOWER(player_name) LIKE LOWER($1) 
            AND (array_length($2::varchar[], 1) IS NULL OR player_info.team_name = ANY($2::varchar[]))
            AND (array_length($3::varchar[], 1) IS NULL OR player_role = ANY($3::varchar[]))
            AND (array_length($4::varchar[], 1) IS NULL OR player_batting_style = ANY($4::varchar[]))
            AND (array_length($5::varchar[], 1) IS NULL OR player_bowling_style = ANY($5::varchar[]))
            AND (array_length($6::varchar[], 1) IS NULL OR coaches.coach_name = ANY($6::varchar[]))`,
            [`%${text}%`, team, role, battingStyle, bowlingStyle, coach],
        );

        if (filterMostHundreds) {
            console.log('Filtering most hundreds');
            const maxHundreds = Math.max(...players.map((player) => player.total_hundreds));
            if (maxHundreds > 0) {
                // Check if maxHundreds is greater than 0
                console.log('Max Hundreds:', maxHundreds);
                players = players.filter((player) => player.total_hundreds === maxHundreds);
            } else {
                // If maxHundreds is 0, filter out all players
                players = [];
            }
        }

        if (filtermost5wickets) {
            console.log('Filtering most 5w');
            const max5w = Math.max(...players.map((player) => player.total_5w));
            if (max5w > 0 && max5w !== -Infinity) {
                console.log('Max 5w:', max5w);
                players = players.filter((player) => player.total_5w === max5w);
            }
        }

        // Filter out duplicates based on player_id
        const uniquePlayers = Array.from(new Set(players.map((player) => player.player_id))).map(
            (id) => players.find((player) => player.player_id === id),
        );

        console.log(uniquePlayers);
        res.json(uniquePlayers);
    } catch (error) {
        console.error('Error running query:', error.message || error);
        res.status(500).json({ error: 'An error occurred while processing your request.' });
    }
});
app.get('/user/loggedin', async (req, res) => {
    console.log('Fetching data for logged-in user');
    try {
        const playerNames = [
            'Jaker Ali',
            'Mahmudullah',
            'Dhruv Jurel',
            'Babar Azam',
            'Kane Williamson',
        ];
        const matchIds = ['m7', 'm2', 'm3', 'm4', 'm5', 'm6'];

        const playersQuery = 'SELECT * FROM player_info WHERE player_name = ANY($1)';
        const matchesQuery = `
        SELECT match_summary.*, stadiums.stadium_name 
        FROM match_summary 
        JOIN stadiums ON match_summary.stadium_id = stadiums.stadium_id 
        WHERE match_summary.match_id = ANY($1)
      `;
        const dream11query =
            'SELECT dream11.*, users.image FROM dream11 LEFT JOIN users ON dream11.userid = users.userid  ORDER BY ranking';
        const userquery = 'SELECT * FROM users WHERE userid = $1';
        const userquery1 = 'SELECT userid FROM users WHERE userid = $1';
        const allusers = 'SELECT * FROM users';
        const user = await db.any(userquery, [currentuserid]);
        const userid = await db.any(userquery1, [currentuserid]);
        const usersdream11query = 'SELECT * FROM dream11 WHERE userid = $1';
        const userdream11 = await db.any(usersdream11query, [currentuserid]);
        const transformedUserDream11 = userdream11.map((team) => {
            const players = [];

            for (let i = 1; i <= 11; i++) {
                if (team[`player${i}`]) {
                    players.push(team[`player${i}`]);
                }
            }

            return {
                ...team,
                players,
            };
        });
        const upcomingMatchesQuery = `
        SELECT match_summary.*, stadiums.stadium_name 
        FROM match_summary
        INNER JOIN stadiums ON match_summary.stadium_id = stadiums.stadium_id
        WHERE TO_DATE(match_date, 'DD Mon, YYYY') > CURRENT_DATE
        ORDER BY TO_DATE(match_date, 'DD Mon, YYYY') ASC
        LIMIT 8
    `;
        const recentNewsQuery = `
            SELECT * FROM upcoming_news
            WHERE news_date >= CURRENT_DATE - INTERVAL '1 week'
        `;
        const upcomingMatches = await db.any(upcomingMatchesQuery);
        const recentNews = await db.any(recentNewsQuery);
        const players = await db.any(playersQuery, [playerNames]);
        const matches = await db.any(matchesQuery, [matchIds]);
        const dream11 = await db.any(dream11query, [currentuserid]);
        const alluser = await db.any(allusers);
        console.log('Players:', players);
        console.log('Matches:', matches);
        console.log('Dream11:', dream11);
        console.log('User:', user);
        console.log('All Users:', alluser);
        console.log('User Dream11:', userdream11);
        console.log('Upcoming Matches:', upcomingMatches);
        console.log('Recent News:', recentNews);
        res.json({
            players,
            matches,
            dream11,
            user,
            alluser,
            userdream11: transformedUserDream11,
            upcomingMatches,
            recentNews,
            userid,
        });
        console.log('userid:', userid);
        console.log('Players:', players);
        console.log('Matches:', matches);
        console.log('Dream11:', dream11);
        console.log('User:', user);
        console.log('All Users:', alluser);
        console.log('User Dream11:', userdream11);
        console.log('Upcoming Matches:', upcomingMatches);
        console.log('Recent News:', recentNews);
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: 'An error occurred while fetching data' });
    }
});
app.post('/user/loggedin/teams', async (req, res) => {
    const {
 teamName, boardName, iccRanking, matchesWonAgainst, coachName, playingMostMatches 
} =        req.body;

    try {
        let query = 'SELECT nt.team_name FROM national_team nt';
        const values = [];
        let rankingType = 'nt.icc_odi_ranking'; // Default ranking type

        let mostPlayedTeam = null;
        if (playingMostMatches) {
            // Call the stored procedure
            await db.query('CALL get_most_played_team()');

            // Fetch the result from the temporary table
            const result = await db.one('SELECT * FROM result');
            mostPlayedTeam = result.team_name;
        }

        if (teamName) {
            query += ' WHERE LOWER(nt.team_name) LIKE LOWER($1)';
            values.push(`%${teamName}%`);
        }

        if (boardName && boardName.length > 0) {
            const boardParams = Array.isArray(boardName)
                ? boardName.map((_, index) => `$${values.length + index + 1}`).join(',')
                : `$${values.length + 1}`;
            query += `${
                values.length > 0 ? ' AND' : ' WHERE'
            } nt.board_name = ANY(ARRAY[${boardParams}])`;
            values.push(...(Array.isArray(boardName) ? boardName : [boardName]));
        }

        if (iccRanking && iccRanking.rank && iccRanking.type) {
            rankingType = `nt.icc_${iccRanking.type.toLowerCase()}_ranking`;
            query += `${values.length > 0 ? ' AND' : ' WHERE'} ${rankingType} = $${
                values.length + 1
            }`;
            values.push(parseInt(iccRanking.rank, 10));
        }

        if (matchesWonAgainst) {
            query += `${values.length > 0 ? ' AND' : ' WHERE'} nt.most_matches_won_against = $${
                values.length + 1
            }`;
            values.push(matchesWonAgainst);
        }

        if (coachName && coachName !== 'Select Coach Name') {
            query += `${
                values.length > 0 ? ' AND' : ' WHERE'
            } nt.team_name IN (SELECT coaching_team FROM coaches WHERE LOWER(coach_name) LIKE LOWER($${
                values.length + 1
            }))`;
            values.push(`%${coachName}%`);
        }

        query += ` ORDER BY ${rankingType} ASC, nt.team_name ASC`;

        if (mostPlayedTeam && values.length === 0) {
            res.json([mostPlayedTeam]);
            return;
        }

        const teams = await db.any(query, values);
        const teamNames = teams.map((team) => team.team_name);

        if (mostPlayedTeam) {
            const intersection = teamNames.filter((team) => team === mostPlayedTeam);
            res.json(intersection);
        } else {
            res.json(teamNames);
        }
    } catch (error) {
        console.error('Error executing SQL query:', error.message || error);
        res.status(500).json({ error: 'An error occurred while processing your request.' });
    }
});
app.get('/user/loggedin/playerinfo/:player_id', (req, res) => {
    const { player_id } = req.params;
    db.one('SELECT * FROM player_info WHERE player_id = $1', player_id)
        .then((playerData) => {
            res.json(playerData);
        })
        .catch((error) => {
            console.error('DB Error:', error);
            if (error instanceof db.errors.QueryResultError) {
                // A query result error (e.g., no data found) has a code property
                console.error('DB Error Code:', error.code);
            }
            res.status(500).json({ error: 'Internal server error', details: error.message });
        });
});
app.get('/user/loggedin/teaminfo/:team_name', async (req, res) => {
    // console.log('Fetching team info');
    try {
        const { team_name } = req.params;
        // console.log('Team Name:', team_name);
        const teamInfo = await db.oneOrNone('SELECT * FROM national_team WHERE team_name = $1', [
            team_name,
        ]);
        // console.log('Team Info:', teamInfo);

        // Fetch associated data
        const coach = await db.oneOrNone('SELECT * FROM coaches WHERE coach_name = $1', [
            teamInfo?.current_coach,
        ]);
        // console.log('Coach:', coach);
        const homeGround = await db.oneOrNone('SELECT * FROM stadiums WHERE stadium_id = $1', [
            teamInfo?.home_ground,
        ]);
        // console.log('Home Ground:', homeGround);
        const board = await db.oneOrNone('SELECT * FROM cricket_board WHERE board_name = $1', [
            teamInfo?.board_name,
        ]);
        // console.log('Board:', board);

        const players = {
            mostRunsTest: await db.oneOrNone('SELECT * FROM player_info WHERE player_id = $1', [
                teamInfo?.most_runs_test,
            ]),
            mostWicketsTest: await db.oneOrNone('SELECT * FROM player_info WHERE player_id = $1', [
                teamInfo?.most_wickets_test,
            ]),
            mostRunsODI: await db.oneOrNone('SELECT * FROM player_info WHERE player_id = $1', [
                teamInfo?.most_runs_odi,
            ]),
            mostWicketsODI: await db.oneOrNone('SELECT * FROM player_info WHERE player_id = $1', [
                teamInfo?.most_wickets_odi,
            ]),
            mostRunsT20: await db.oneOrNone('SELECT * FROM player_info WHERE player_id = $1', [
                teamInfo?.most_runs_t20,
            ]),
            mostWicketsT20: await db.oneOrNone('SELECT * FROM player_info WHERE player_id = $1', [
                teamInfo?.most_wickets_t20,
            ]),
            most100s: await db.oneOrNone('SELECT * FROM player_info WHERE player_id = $1', [
                teamInfo?.most_100s,
            ]),
            mostWickets: await db.oneOrNone('SELECT * FROM player_info WHERE player_id = $1', [
                teamInfo?.most_wickets,
            ]),
        };
        const result = {
            ...teamInfo,
            coach,
            homeGround,
            board,
            players,
        };
        // console.log('Result:', result);

        res.json(result);
    } catch (error) {
        console.error('Error fetching team info:', error.message || error);
        res.status(500).json({ error: 'Failed to fetch team info' });
    }
});
app.get('/user/loggedin/board/:board_name', async (req, res) => {
    try {
        const boardInfo = await db.any('SELECT * FROM get_board_info($1)', [req.params.board_name]);
        const players = await db.any(
            'SELECT * FROM player_info WHERE team_name IN (SELECT team_name FROM cricket_board WHERE board_name = $1)',
            [req.params.board_name]
        );
        res.json({ boardInfo: boardInfo[0], players });
    } catch (error) {
        console.error('Error fetching board and player info:', error.message || error);
        res.status(500).json({ error: 'Failed to fetch board and player info' });
    }
});
app.get('/user/loggedin/scorecard/:match_id', async (req, res) => {
    try {
        console.log('mathc id is ');
        console.log(req.params.match_id);
        const matchId = req.params.match_id;
        console.log('Fetching scorecard for match:', matchId);
        const matchSummary = await db.any('SELECT * FROM match_summary WHERE match_id = $1', [
            matchId,
        ]);
        console.log('Match Summary:', matchSummary);

        if (matchSummary.length === 0) {
            return res.status(404).json({ error: 'Match not found' });
        }
        const scorecard1 = await db.any('SELECT * FROM scorecard1 WHERE match_id = $1', [matchId]);
        const scorecard2 = await db.any('SELECT * FROM scorecard2 WHERE match_id = $1', [matchId]);
        const scorecard3 = await db.any('SELECT * FROM scorecard3 WHERE match_id = $1', [matchId]);
        const scorecard4 = await db.any('SELECT * FROM scorecard4 WHERE match_id = $1', [matchId]);
        console.log('Scorecard1:', scorecard1);
        const stadiumName = await db.any(
            'SELECT stadium_name FROM stadiums WHERE stadium_id = $1',
            [matchSummary[0].stadium_id]
        );
        console.log('Stadium Name:', stadiumName);
        const umpireNames = await db.any(
            'SELECT umpire_name FROM umpire_info WHERE umpire_id IN ($1, $2, $3)',
            [matchSummary[0].umpire_id1, matchSummary[0].umpire_id2, matchSummary[0].umpire_id3]
        );

        res.json({
            matchSummary,
            scorecard1,
            scorecard2,
            scorecard3,
            scorecard4,
            stadiumName,
            umpireNames,
        });
    } catch (error) {
        console.error('Error fetching scorecard:', error.message || error);
        res.status(500).json({ error: 'Failed to fetch scorecard' });
    }
});
app.get('/user/loggedin/coach/:coach_name', async (req, res) => {
    console.log('Fetching coach info');
    try {
        const result = await db.any('SELECT * FROM get_coach_info($1)', [req.params.coach_name]);
        res.json(result);
        console.log(result);
    } catch (error) {
        console.error('Error fetching coach info:', error.message || error);
        res.status(500).json({ error: 'Failed to fetch coach info' });
    }
});

app.get('/user/loggedin/stadium/:stadium_id', async (req, res) => {
    try {
        const stadiumResult = await db.any('SELECT * FROM get_stadium_info($1)', [
            req.params.stadium_id,
        ]);
        const matchResult = await db.any('SELECT * FROM get_matches_by_stadium($1)', [
            req.params.stadium_id,
        ]);
        res.json({ stadium: stadiumResult, matches: matchResult });
    } catch (error) {
        console.error('Error fetching stadium info:', error.message || error);
        res.status(500).json({ error: 'Failed to fetch stadium info' });
    }
});
app.get('/user/loggedin/profile', (req, res) => {
    console.log('Current User ID');
    console.log('Current User ID:', currentuserid);
    db.one('SELECT * FROM Users WHERE userid = $1', [currentuserid])
        .then((data) => {
            res.send(data);
            console.log(data);
        })
        .catch((error) => {
            console.error('Error fetching user profile:', error);
            res.status(500).send('Error fetching user profile');
        });
});

app.post('/admin/loggedin', async (req, res) => {
    const { searchQuery } = req.body;
    console.log('Search Query:', searchQuery);
    try {
        const players = await db.any(
            'SELECT * FROM player_info WHERE LOWER(player_name) LIKE LOWER($1)',
            [`%${searchQuery}%`]
        );
        res.json(players);
    } catch (error) {
        console.error('Error fetching players:', error.message || error);
        res.status(500).json({ error: 'Failed to fetch players' });
    }
});
app.post('/user/loggedin/dream11', async (req, res) => {
    const { searchQuery } = req.body;
    // console.log('Search Query:', searchQuery);
    try {
        const players = await db.any(
            'SELECT * FROM player_info WHERE LOWER(player_name) LIKE LOWER($1)',
            [`%${searchQuery}%`]
        );
        // console.log(players);
        res.json(players);
    } catch (error) {
        console.error('Error fetching players:', error.message || error);
        res.status(500).json({ error: 'Failed to fetch players' });
    }
});
app.post('/user/loggedin/dream11team', async (req, res) => {
    console.log('Creating Dream11 team');
    const { teamName, selectedCoach, captain, selectedPlayers } = req.body;
    console.log('Team Name:', req.body);
    if (selectedPlayers.length !== 11) {
        res.status(400).json({ error: 'Exactly 11 players must be selected' });
        return;
    }
    const playerNames = selectedPlayers.map((player) => player.player_name);
    try {
        await db.none(
            'INSERT INTO dream11(userid, team_name, coach_name, captain, player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11) VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15)',
            [currentuserid, teamName, selectedCoach, captain, ...playerNames]
        );

        res.json({ message: 'Dream team created successfully' });
    } catch (error) {
        console.error('Error creating dream team:', error.message || error);
        res.status(500).json({
            error: 'Failed to create dream team',
            debug: error.message || error,
        });
    }
});
app.get('/user/loggedin/Dream11TeamInfo/:teamName', async (req, res) => {
    try {
        const { teamName } = req.params;
        const teamInfo = await db.any(
            `
            SELECT d.*, ;
            p1.player_role as player1_role, p1.player_image_path as player1_image_path, p1.team_name as player1_team_name,
            p2.player_role as player2_role, p2.player_image_path as player2_image_path, p2.team_name as player2_team_name,
            p3.player_role as player3_role, p3.player_image_path as player3_image_path, p3.team_name as player3_team_name,
            p4.player_role as player4_role, p4.player_image_path as player4_image_path, p4.team_name as player4_team_name,
            p5.player_role as player5_role, p5.player_image_path as player5_image_path, p5.team_name as player5_team_name,
            p6.player_role as player6_role, p6.player_image_path as player6_image_path, p6.team_name as player6_team_name,
            p7.player_role as player7_role, p7.player_image_path as player7_image_path, p7.team_name as player7_team_name,
            p8.player_role as player8_role, p8.player_image_path as player8_image_path, p8.team_name as player8_team_name,
            p9.player_role as player9_role, p9.player_image_path as player9_image_path, p9.team_name as player9_team_name,
            p10.player_role as player10_role, p10.player_image_path as player10_image_path, p10.team_name as player10_team_name,
            p11.player_role as player11_role, p11.player_image_path as player11_image_path, p11.team_name as player11_team_name
            FROM dream11 d
            LEFT JOIN player_info p1 ON p1.player_name = d.player1
            LEFT JOIN player_info p2 ON p2.player_name = d.player2
            LEFT JOIN player_info p3 ON p3.player_name = d.player3
            LEFT JOIN player_info p4 ON p4.player_name = d.player4
            LEFT JOIN player_info p5 ON p5.player_name = d.player5
            LEFT JOIN player_info p6 ON p6.player_name = d.player6
            LEFT JOIN player_info p7 ON p7.player_name = d.player7
            LEFT JOIN player_info p8 ON p8.player_name = d.player8
            LEFT JOIN player_info p9 ON p9.player_name = d.player9
            LEFT JOIN player_info p10 ON p10.player_name = d.player10
            LEFT JOIN player_info p11 ON p11.player_name = d.player11
            WHERE d.team_name = $1
            `,
            [teamName],
        );
        res.json(teamInfo);
        console.log('here it is');
        // console.log(teamInfo);
    } catch (error) {
        console.error('Error fetching Dream11 team info:', error.message || error);
        res.status(500).json({ error: 'Failed to fetch Dream11 team info' });
    }
});
const storage2 = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, 'D:/Buet/Crazycric-project/react/vite-project/public/player images');
    },
    filename: (req, file, cb) => {
        cb(null, file.originalname);
    },
});

const upload2 = multer({ storage: storage2 });

app.post('/admin/loggedin/insert', upload2.single('playerImage'), async (req, res) => {
    try {
        const {
            playerName,
            playerCountry,
            playerBirthdate,
            playerRole,
            playerBattingStyle,
            playerBowlingStyle,
        } = req.body;
        const playerImagePath = `http://localhost:3000/images/${req.file.originalname}`;

        // Fetch a player from the same country
        const existingPlayer = await db.one(
            'SELECT * FROM player_info WHERE team_name = $1 LIMIT 1',
            [playerCountry],
        );

        // Extract country code from existing player's ID
        const countryCode = existingPlayer.player_id.match(/^\D+/)[0];

        const numPlayers = await db.one('SELECT COUNT(*) FROM player_info WHERE team_name = $1', [
            playerCountry,
        ]);
        const playerId = countryCode + (parseInt(numPlayers.count) + 1);
        await db.none(
            'INSERT INTO player_info (player_id, player_name, team_name, player_image_path, player_date_of_birth, player_role, player_batting_style, player_bowling_style) VALUES ($1, $2, $3, $4, $5, $6, $7, $8)',
            [
                playerId,
                playerName,
                playerCountry,
                playerImagePath,
                playerBirthdate,
                playerRole,
                playerBattingStyle,
                playerBowlingStyle,
            ]
        );

        res.json({ status: 'success', message: 'Player inserted successfully' });
    } catch (error) {
        console.error('Error inserting player:', error);
        res.status(500).json({ status: 'error', message: 'Failed to insert player' });
    }
});
app.get('/admin/loggedin/update/:playerId', async (req, res) => {
    const { playerId } = req.params;

    try {
        const playerData = await db.one('SELECT * FROM player_info WHERE player_id = $1', [
            playerId,
        ]);
        res.status(200).json(playerData);
    } catch (error) {
        console.error('Error fetching player data:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});
app.post('/admin/loggedin/update/:playerId', async (req, res) => {
    const { playerId } = req.params;
    const playerData = req.body;
    console.log('Player Data:', playerData);
    const fields = Object.keys(playerData);
    const values = Object.values(playerData);
    const placeholders = fields.map((_, i) => `$${i + 1}`);

    const query = `UPDATE player_info SET (${fields.join(', ')}) = (${placeholders.join(
        ', ',
    )}) WHERE player_id = $${placeholders.length + 1}`;

    try {
        await db.none(query, [...values, playerId]);
        res.status(200).json({ message: 'Player data updated successfully' });
    } catch (error) {
        console.error('Error updating player data:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});
app.get('/user/loggedin/news/:news_id', async (req, res) => {
    const { news_id } = req.params;
    console.log('Fetching news:', news_id);
    try {
        const news = await db.one('SELECT * FROM upcoming_news WHERE news_id = $1', [news_id]);
        res.json(news);
        console.log('News:', news);
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: 'An error occurred while fetching the news data.' });
    }
});
app.get('/user/loggedin/Dream11update/:userid', async (req, res) => {
    const { userid } = req.params;
    console.log('Fetching Dream11 team data for user:', userid);

    try {
        const dream11 = await db.any('SELECT * FROM dream11 WHERE userid = $1', [userid]);
        if (dream11 && dream11.length > 0) {
            const teamInfo = dream11[0];
            const teamWithPlayers = await db.any(
                `
                SELECT d.*, 
                p1.player_role as player1_role, p1.player_image_path as player1_image_path, p1.team_name as player1_team_name,
                p2.player_role as player2_role, p2.player_image_path as player2_image_path, p2.team_name as player2_team_name,
                p3.player_role as player3_role, p3.player_image_path as player3_image_path, p3.team_name as player3_team_name,
                p4.player_role as player4_role, p4.player_image_path as player4_image_path, p4.team_name as player4_team_name,
                p5.player_role as player5_role, p5.player_image_path as player5_image_path, p5.team_name as player5_team_name,
                p6.player_role as player6_role, p6.player_image_path as player6_image_path, p6.team_name as player6_team_name,
                p7.player_role as player7_role, p7.player_image_path as player7_image_path, p7.team_name as player7_team_name,
                p8.player_role as player8_role, p8.player_image_path as player8_image_path, p8.team_name as player8_team_name,
                p9.player_role as player9_role, p9.player_image_path as player9_image_path, p9.team_name as player9_team_name,
                p10.player_role as player10_role, p10.player_image_path as player10_image_path, p10.team_name as player10_team_name,
                p11.player_role as player11_role, p11.player_image_path as player11_image_path, p11.team_name as player11_team_name
                FROM dream11 d
                LEFT JOIN player_info p1 ON p1.player_name = d.player1
                LEFT JOIN player_info p2 ON p2.player_name = d.player2
                LEFT JOIN player_info p3 ON p3.player_name = d.player3
                LEFT JOIN player_info p4 ON p4.player_name = d.player4
                LEFT JOIN player_info p5 ON p5.player_name = d.player5
                LEFT JOIN player_info p6 ON p6.player_name = d.player6
                LEFT JOIN player_info p7 ON p7.player_name = d.player7
                LEFT JOIN player_info p8 ON p8.player_name = d.player8
                LEFT JOIN player_info p9 ON p9.player_name = d.player9
                LEFT JOIN player_info p10 ON p10.player_name = d.player10
                LEFT JOIN player_info p11 ON p11.player_name = d.player11
                WHERE d.userid = $1
                `,
                [userid]
            );
            console.log('Team with Players:', teamWithPlayers);

            res.status(200).json(teamWithPlayers);
        } else {
            res.status(404).json({ error: 'Dream11 team not found for the given user' });
        }
    } catch (error) {
        console.error('Error fetching Dream11 team info:', error.message || error);
        res.status(500).json({ error: 'Failed to fetch Dream11 team info' });
    }
});
app.get('/user/loggedin/statguru', async (req, res) => {
    try {
        console.log('Fetching Statguru data');
        const stadiums = await db.any('SELECT stadium_name FROM stadiums');
        res.json(stadiums.map((stadium) => stadium.stadium_name));
        console.log(stadiums);
    } catch (err) {
        console.error(err);
        res.status(500).send('Server error');
    }
});
app.post('/user/loggedin/statguru', (req, res) => {
    const {
        selectedButton,
        selectedTeam,
        selectedOpposition,
        selectedVenue,
        selectedHost,
        selectedResult,
        selectedFormat,
        selectedStadium,
        selectedEndDate,
        selectedStartDate,
        endDate,
        name,
        selectedInvolvingTeam,
        selectedOriginality,
    } = req.body;
    if (selectedButton === 'Batting') {
        // Handle Batting
    } else if (selectedButton === 'Bowling') {
        // Handle Bowling
    } else if (selectedButton === 'All-Round') {
        // Handle All-Round
    } else if (selectedButton === 'Team') {
        // Handle Team
    } else if (selectedButton === 'Umpire') {
        // Handle Umpire
    } else if (selectedButton === 'Stadium') {
        // Handle Stadium
    } else {
        // Handle other cases
    }
    res.json({ message: 'Data processed' });
});
app.post('/user/loggedin/statguru', async (req, res) => {});
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
