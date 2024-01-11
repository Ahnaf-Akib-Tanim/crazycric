/* const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const pgp = require('pg-promise')();
const cors = require('cors');

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
app.post('/user', async (req, res) => {
    console.log(req.body);
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
app.post('/user/signup', async (req, res) => {
    // Handle '/user' logic
});
app.post('/user/loggedin', async (req, res) => {
    // Handle '/user' logic
});

app.post('/admin', async (req, res) => {
    // Handle '/admin' logic
});

app.post('/admin/login', async (req, res) => {
    // Handle '/admin/loggedin' logic
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
}); */
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

// Configure multer
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, staticFilePath);
    },
    filename: (req, file, cb) => {
        cb(null, req.body.userId + path.extname(file.originalname));
    },
});

const upload = multer({ storage });

app.post('/user', async (req, res) => {
    console.log(req.body);
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
    const {
 userId, password, name, country, team, player 
} = req.body;
    const image = req.file ? req.file.path : null;

    try {
        // Check if user ID already exists
        const existingUser = await db.oneOrNone('SELECT * FROM Users WHERE userid = $1', [userId]);

        if (existingUser) {
            console.log('User ID already exists');
            res.json({ status: 'failure', message: 'User ID already exists' });
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

app.post('/user/loggedin', async (req, res) => {
    // Handle '/user/loggedin' logic
});

app.post('/admin', async (req, res) => {
    // Handle '/admin' logic
});

app.post('/admin/login', async (req, res) => {
    // Handle '/admin/loggedin' logic
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
