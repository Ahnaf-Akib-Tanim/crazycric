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