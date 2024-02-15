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