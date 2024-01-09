const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const pgp = require('pg-promise')();
const cors = require('cors');
const cookieParser = require('cookie-parser');

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
app.use(cors());
app.use(cookieParser());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

const staticFilePath = path.resolve(__dirname, './react/vite-project/public');
app.use(express.static(staticFilePath));
/*
app.get('/', async (req, res) =>
{ const boards = await db.any('SELECT * FROM cricket_board'); res.json(boards); });
*/
app.post('/user', async (req, res) => {
    // Handle '/user' logic
});

app.post('/admin', async (req, res) => {
    // Handle '/admin' logic
});

app.post('/admin/loggedin', async (req, res) => {
    // Handle '/admin/loggedin' logic
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
