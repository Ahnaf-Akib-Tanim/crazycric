const axios = require('axios');
const pgp = require('pg-promise')();
const db = pgp({
    user: 'postgres',
    password: '1234',
    host: 'localhost',
    port: 5432,
    database: 'crazycric',
    connectionParams: {
        autocommit: true,
    },
});

// Function to fetch venue information
async function fetchVenueInfo() {
    try {
        const response = await axios.get('https://cricbuzz-cricket.p.rapidapi.com/venues/v1/44', {
            headers: {
                'X-RapidAPI-Key': 'a8f6e1ae88msh37838057bfe07c4p1c9798jsn79cfdf98e848',
                'X-RapidAPI-Host': 'cricbuzz-cricket.p.rapidapi.com',
            },
        });

        const venueInfo = response.data;
        return venueInfo;
    } catch (error) {
        console.error('Error fetching venue information:', error.message);
        throw error;
    }
}

// Function to insert venue information into the database
// Function to insert venue information into the database
async function insertVenueInfo() {
    try {
        const venueInfo = await fetchVenueInfo();

        const insertQuery = `
            INSERT INTO venue_info (venue_id, venue_name, location, matches_played)
            VALUES ($1, $2, $3, $4)
            ON CONFLICT (venue_id) DO NOTHING
        `;

        const params = [
            venueInfo.imageId, // Using imageId as venue_id
            venueInfo.knownAs,
            `${venueInfo.city}, ${venueInfo.country}`,
            venueInfo.capacity.replace(',', ''), // Assuming capacity is a string with commas
        ];

        await db.none(insertQuery, params);
        console.log('Venue information inserted successfully');
    } catch (error) {
        console.error('Error inserting venue information:', error.message);
    } finally {
        pgp.end();
    }
}


// Call the function to insert venue information
insertVenueInfo();
