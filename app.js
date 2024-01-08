const express = require('express');

const bodyParser = require('body-parser');
const currentuserid;
const currentuserpass;
const app = express();
const port = 3001;
app.use(bodyParser.json());
// app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: true }));
const pgp = require('pg-promise')();

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
        obj.done(); // success, release the connection
    })
    .catch((error) => {
        console.error('Error connecting to the database:', error.message || error);
    });
app.post('/user', async (req, res) => {});
app.post('/admin', async (req, res) => {});
app.post('/admin/loggedin', async (req, res) => {});
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
