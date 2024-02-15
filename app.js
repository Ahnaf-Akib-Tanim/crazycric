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
    express.static(path.join(__dirname, './react/vite-project/public/player images')),
);
app.use(
    '/cricketboardimages',
    express.static(path.join(__dirname, './react/vite-project/public/cricketboard_images')),
);
app.use(
    '/seriesimages',
    express.static(path.join(__dirname, './react/vite-project/public/series_images')),
);
app.use(
    '/countryimages',
    express.static(path.join(__dirname, './react/vite-project/public/country')),
);
app.use('/profileimages', express.static(path.join(__dirname, './react/vite-project/public')));
app.use(
    '/umpireimages',
    express.static(path.join(__dirname, './react/vite-project/public/umpire_images')),
);
app.use(
    '/stadiumimages',
    express.static(path.join(__dirname, './react/vite-project/public/stadium_images')),
);
app.use(
    '/coachimages',
    express.static(path.join(__dirname, './react/vite-project/public/coach_images')),
);
app.use(
    '/country2images',
    express.static(path.join(__dirname, './react/vite-project/public/country2')),
);
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, path.join(staticFilePath, 'profileimages'));
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
            [userId, password]
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
    const { userId, password, name, country, team, player } = req.body;
    const image = req.file ? `/profileimages/${req.file.filename}` : null;
    try {
        const existingUser = await db.oneOrNone('SELECT * FROM Users WHERE userid = $1', [userId]);

        if (existingUser) {
            console.log('User ID already exists');
            res.json({ status: 'failure', message: 'User ID already exists!' });
        } else {
            const user = await db.oneOrNone(
                'INSERT INTO Users (userid, userpassword, username, countryname, favteam, favplayer, image) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING *',
                [userId, password, name, country, team, player, image]
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
app.get('/user/loggedin', async (req, res) => {
    try {
        const playerNames = ['Tamim Iqbal', 'Virat Kohli', 'Shakib Al Hasan', 'Babar Azam'];
        const matchIds = ['m1', 'm101'];

        const playersQuery = 'SELECT * FROM player_info WHERE player_name = ANY($1)';
        const matchesQuery = 'SELECT * FROM match_summary WHERE match_id = ANY($1)';

        const players = await db.any(playersQuery, [playerNames]);
        const matches = await db.any(matchesQuery, [matchIds]);
        res.json({
            players,
            matches,
        });
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: 'An error occurred while fetching data' });
    }
});

app.post('/user/loggedin/teams', async (req, res) => {
    const { teamName, boardName, iccRanking, matchesWonAgainst } = req.body;
    console.log('Search Criteria:', teamName, boardName, iccRanking, matchesWonAgainst);
    try {
        let query = 'SELECT team_name FROM national_team';
        const values = [];
        let rankingType = 'icc_odi_ranking'; // Default ranking type

        if (teamName) {
            query += ' WHERE LOWER(team_name) LIKE LOWER($1)';
            values.push(`%${teamName}%`);
        }

        if (boardName && boardName.length > 0) {
            query += `${values.length > 0 ? ' AND' : ' WHERE'} board_name = ANY($${
                values.length + 1
            }::varchar[])`;
            values.push(boardName);
        }

        if (iccRanking && iccRanking.rank && iccRanking.type) {
            rankingType = `icc_${iccRanking.type.toLowerCase()}_ranking`;
            query += `${values.length > 0 ? ' AND' : ' WHERE'} ${rankingType} = $${
                values.length + 1
            }`;
            values.push(parseInt(iccRanking.rank, 10));
        }

        if (matchesWonAgainst) {
            query += `${values.length > 0 ? ' AND' : ' WHERE'} most_matches_won_against = $${
                values.length + 1
            }`;
            values.push(matchesWonAgainst);
        }

        // Order by rankingType and team_name
        query += ` ORDER BY ${rankingType} ASC, team_name ASC`;

        const teams = await db.any(query, values);
        const teamNames = teams.map((team) => team.team_name);
        console.log('Teams:', teamNames);
        res.json(teamNames);
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
            [req.params.board_name],
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
            [matchSummary[0].stadium_id],
        );
        console.log('Stadium Name:', stadiumName);
        const umpireNames = await db.any(
            'SELECT umpire_name FROM umpire_info WHERE umpire_id IN ($1, $2, $3)',
            [matchSummary[0].umpire_id1, matchSummary[0].umpire_id2, matchSummary[0].umpire_id3],
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
    // Handle '/admin/loggedin' logic
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
