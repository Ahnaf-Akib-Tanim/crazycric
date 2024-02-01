// eslint-disable-next-line no-unused-vars
import PropTypes from "prop-types";
import React, { useEffect, useState } from "react";
import {
  Button,
  Card,
  Col,
  Container,
  Nav,
  Navbar,
  Row,
  Table,
} from "react-bootstrap";
import { Link } from "react-router-dom";
import "./homepage.css";

const teams = [
  { rank: 1, name: "India", flag: "ind" },
  { rank: 2, name: "Australia", flag: "aus" },
  { rank: 3, name: "South Africa", flag: "sa" },
  { rank: 4, name: "Pakistan", flag: "pak" },
  { rank: 5, name: "New Zealand", flag: "nz" },
  { rank: 6, name: "England", flag: "eng" },
  { rank: 7, name: "Sri Lanka", flag: "sl" },
  { rank: 8, name: "Bangladesh", flag: "bd" },
  { rank: 9, name: "Afghanistan", flag: "afg" },
  { rank: 10, name: "West Indies", flag: "wi" },
];
const UpcomingMatches = () => (
  <Container style={{ marginTop: "20px" }}>
    <h2
      style={{
        fontWeight: "bold",
        textAlign: "center",
        fontSize: "30px",
        position: "relative",
        top: "-380px",
        left: "-300px",
      }}
    >
      Upcoming Matches
    </h2>
    <Row>
      {[
        {
          image: "http://localhost:3000/cricketboardimages/sl.png",
          imgStyle: { width: "100px", height: "100px" },
          title: "Sri Lanka Tour of Bangladesh, 2024",
          titleStyle: {
            position: "relative",
            top: "-90px",
            left: "6px",
            fontSize: "18px",
          },
          subtitle: "First ODI, 26th of February, 11AM(BST)",
          subStyle: {
            position: "relative",
            top: "-90px",
            left: "6px",
            fontSize: "15px",
          },
          cardStyle: {
            width: "280px",
            height: "200px",
            position: "relative",
            top: "-400px",
            left: "320px",
            // fontSize: "18px",
            fontWeight: "bold",
          },
          image2: "http://localhost:3000/cricketboardimages/bd.png",
          imgStyle2: {
            width: "110px",
            height: "110px",
            position: "relative",
            top: "00px",
            left: "65px",
          },
          image3: "http://localhost:3000/cricketboardimages/vs.png",
          imgStyle3: {
            width: "100px",
            height: "100px",
            position: "relative",
            top: "-100px",
            left: "80px",
          },
        },
        {
          image: "http://localhost:3000/cricketboardimages/ind.png",
          imgStyle: { width: "100px", height: "100px" },
          title: "England Tour of India, 2024",
          titleStyle: {
            position: "relative",
            top: "-90px",
            left: "6px",
            fontSize: "18px",
          },
          subtitle: "Fifth Test, 27th of February, 10AM(IST)",
          subStyle: {
            position: "relative",
            top: "-90px",
            left: "6px",
            fontSize: "15px",
          },
          cardStyle: {
            width: "280px",
            height: "200px",
            position: "relative",
            top: "-630px",
            left: "640px",
            // fontSize: "18px",
            fontWeight: "bold",
          },
          image2: "http://localhost:3000/cricketboardimages/eng.png",
          imgStyle2: {
            width: "110px",
            height: "110px",
            position: "relative",
            top: "00px",
            left: "65px",
          },
          image3: "http://localhost:3000/cricketboardimages/vs.png",
          imgStyle3: {
            width: "100px",
            height: "100px",
            position: "relative",
            top: "-100px",
            left: "80px",
          },
        },
        {
          image: "http://localhost:3000/cricketboardimages/aus.png",
          imgStyle: { width: "100px", height: "100px" },
          title: "New Zealand Tour of Australia, 2024",
          titleStyle: {
            position: "relative",
            top: "-90px",
            left: "6px",
            fontSize: "18px",
          },
          subtitle: "1st Test, 27th of February, 3AM(IST)",
          subStyle: {
            position: "relative",
            top: "-90px",
            left: "6px",
            fontSize: "15px",
          },
          cardStyle: {
            width: "280px",
            height: "200px",
            position: "relative",
            top: "-860px",
            left: "960px",
            // fontSize: "18px",
            fontWeight: "bold",
          },
          image2: "http://localhost:3000/cricketboardimages/nz.png",
          imgStyle2: {
            width: "110px",
            height: "110px",
            position: "relative",
            top: "00px",
            left: "65px",
          },
          image3: "http://localhost:3000/cricketboardimages/vs.png",
          imgStyle3: {
            width: "100px",
            height: "100px",
            position: "relative",
            top: "-100px",
            left: "80px",
          },
        },
      ].map((match, index) => (
        <Col key={index} xs={12} sm={6} md={4} style={{ marginBottom: "20px" }}>
          <Card
            style={{
              ...match.cardStyle,
              border: "5px solid orange",
              borderRadius: "25px",
            }}
          >
            <Card.Img
              variant="top"
              src={match.image}
              style={{ ...match.imgStyle, borderRadius: "15px 15px 0 0" }}
            />
            <Card.Img
              variant="top"
              src={match.image2}
              style={{ ...match.imgStyle2 }}
            />
            <Card.Img
              variant="top"
              src={match.image3}
              style={{ ...match.imgStyle3 }}
            />
            <Card.Body>
              <Card.Title style={match.titleStyle}>{match.title}</Card.Title>
              <Card.Text style={match.subStyle}>{match.subtitle}</Card.Text>
            </Card.Body>
          </Card>
        </Col>
      ))}
    </Row>
  </Container>
);
const playerStyles = [
  {
    cardStyle: {
      width: "200px",
      height: "180px",
      position: "relative",
      top: "-880px",
      left: "310px",
      fontWeight: "bold",
      border: "5px solid orange",
      borderRadius: "25px",
    },
    imgStyle: {
      width: "200px",
      height: "150px",
      position: "relative",
      left: "00px",
      borderRadius: "15px 15px 0 0",
    },
    titleStyle: {
      fontSize: "18px",
      position: "relative",
      left: "40px",
    },
  },
  {
    cardStyle: {
      width: "200px",
      height: "180px",
      position: "relative",
      top: "-1090px",
      left: "560px",
      fontWeight: "bold",
      border: "5px solid orange",
      borderRadius: "25px",
    },
    imgStyle: {
      width: "200px",
      height: "150px",
      position: "relative",
      left: "00px",
      borderRadius: "15px 15px 0 0",
    },
    titleStyle: {
      fontSize: "18px",
      position: "relative",
      left: "40px",
    },
  },
  {
    cardStyle: {
      width: "200px",
      height: "180px",
      position: "relative",
      top: "-1300px",
      left: "800px",
      fontWeight: "bold",
      border: "5px solid orange",
      borderRadius: "25px",
    },
    imgStyle: {
      width: "200px",
      height: "150px",
      position: "relative",
      left: "00px",
      borderRadius: "15px 15px 0 0",
    },
    titleStyle: {
      fontSize: "18px",
      position: "relative",
      left: "40px",
    },
  },
  {
    cardStyle: {
      width: "200px",
      height: "180px",
      position: "relative",
      top: "-1510px",
      left: "1040px",
      fontWeight: "bold",
      border: "5px solid orange",
      borderRadius: "25px",
    },
    imgStyle: {
      width: "200px",
      height: "150px",
      position: "relative",
      left: "00px",
      borderRadius: "15px 15px 0 0",
    },
    titleStyle: {
      fontSize: "18px",
      position: "relative",
      left: "40px",
    },
  },
];
const Trendingplayers = ({ players }) => (
  <Container style={{ marginTop: "20px" }}>
    <h2
      style={{
        fontWeight: "bold",
        textAlign: "center",
        fontSize: "32px",
        position: "relative",
        top: "-860px",
        left: "-310px",
      }}
    >
      Trending Players
    </h2>
    <Row>
      {players.map((player, index) => (
        <Col key={index} xs={12} sm={6} md={4} style={{ marginBottom: "20px" }}>
          <Card style={playerStyles[index].cardStyle}>
            <Card.Img
              variant="top"
              src={player.player_image_path}
              style={playerStyles[index].imgStyle}
            />
            <Card.Body>
              <Link to={`/user/loggedin/playerinfo/${player.player_id}`}>
                <Card.Title
                  style={{
                    ...playerStyles[index].titleStyle,
                    cursor: "pointer",
                    color: "black",
                  }}
                >
                  {player.player_name}
                </Card.Title>
              </Link>
            </Card.Body>
          </Card>
        </Col>
      ))}
    </Row>
  </Container>
);
Trendingplayers.propTypes = {
  players: PropTypes.arrayOf(
    PropTypes.shape({
      name: PropTypes.string,
      player_image_path: PropTypes.string,
    })
  ).isRequired,
};
const matchStyles = [
  {
    cardStyle: {
      width: "200px",
      height: "180px",
      position: "relative",
      top: "-880px",
      left: "310px",
      fontWeight: "bold",
      border: "5px solid orange",
      borderRadius: "25px",
    },
    imgStyle: {
      width: "200px",
      height: "150px",
      position: "relative",
      left: "00px",
      borderRadius: "15px 15px 0 0",
    },

    buttonStyle: {
      borderColor: "lightblue",
      color: "orange",
      borderRadius: "10px",
    },
  },
  {
    cardStyle: {
      width: "200px",
      height: "180px",
      position: "relative",
      top: "-880px",
      left: "310px",
      fontWeight: "bold",
      border: "5px solid orange",
      borderRadius: "25px",
    },
    imgStyle: {
      width: "200px",
      height: "150px",
      position: "relative",
      left: "00px",
      borderRadius: "15px 15px 0 0",
    },

    buttonStyle: {
      borderColor: "lightblue",
      color: "orange",
      borderRadius: "10px",
    },
  },
];

const RecentMatches = ({ matches }) => (
  <Container style={{ marginTop: "20px" }}>
    <h2
      style={{
        fontWeight: "bold",
        textAlign: "center",
        fontSize: "32px",
        position: "relative",
        top: "-860px",
        left: "-310px",
      }}
    >
      Recent Matches
    </h2>
    <Row>
      {matches.map((match, index) => (
        <Col key={index} xs={12} sm={6} md={4} style={{ marginBottom: "20px" }}>
          <Card style={matchStyles[index].cardStyle}>
            <Card.Img
              variant="top"
              src={`http://localhost:3000/seriesimages/${match.series_id}.png`}
              style={matchStyles[index].imgStyle}
            />
            <Card.Body>
              <Card.Title style={matchStyles[index].titleStyle}>
                {match.match_won_by} {match.margin_of_win}
              </Card.Title>
              <Link to={`/user/loggedin/scorecard/${match.match_id}`}>
                <Button
                  variant="primary"
                  style={matchStyles[index].buttonStyle}
                >
                  Scorecard
                </Button>
              </Link>
            </Card.Body>
          </Card>
        </Col>
      ))}
    </Row>
  </Container>
);
const Rankings = () => (
  <Table
    style={{
      borderColor: "orange",
      border: "4px solid orange",
      marginTop: "20px",
      position: "relative",
      top: "50px",
    }}
  >
    <thead>
      <tr>
        <th
          style={{
            color: "blue",
            fontSize: "25px",
            border: "2px solid lightblue",
          }}
        >
          Rank
        </th>
        <th
          style={{
            color: "blue",
            fontSize: "25px",
            border: "2px solid lightblue",
          }}
        >
          Team
        </th>
      </tr>
    </thead>
    <tbody>
      {teams.map((team) => (
        <tr key={team.rank}>
          <td
            style={
              team.rank <= 10
                ? {
                    fontWeight: "bold",
                    fontSize: "25px",
                    border: "1px solid lightblue",
                  }
                : { border: "1px solid lightblue" }
            }
          >
            {team.rank}
          </td>
          <td
            style={{
              display: "flex",
              alignItems: "center",
              border: "1px solid lightblue",
            }}
          >
            <Link
              to={`/user/loggedin/teaminfo/${team.name}`}
              style={{
                color: "orange",
                fontFamily: "Arial",
                fontSize: "18px",
                marginRight: "10px",
              }}
            >
              {team.name}
            </Link>
            <img
              src={`http://localhost:3000/countryimages/${team.flag}.png`}
              alt={team.name}
              width={30}
              height={30}
            />
          </td>
        </tr>
      ))}
    </tbody>
  </Table>
);

const Homepage = () => {
  const [players, setPlayers] = useState([]);
  const [matches, setMatches] = useState([]);

  useEffect(() => {
    fetch("http://localhost:3000/user/loggedin")
      .then((response) => response.json())
      .then((data) => {
        setPlayers(data.players);
        console.log(data.matches);
        console.log(data.players);
        setMatches(data.matches);
      })
      .catch((error) => console.error("Error:", error));
  }, []);
  return (
    <div className="homepage-body">
      <Navbar bg="violet" variant="dark">
        <Navbar.Brand>
          <img
            src="/src/home.png"
            width="40"
            height="40"
            className="d-inline-block align-top home-icon"
            alt="Home icon"
          />
        </Navbar.Brand>
        <Nav className="mr-auto">
          <Button as={Link} to="/user/loggedin/players" className="nav-button">
            Players
          </Button>
          <Button as={Link} to="/user/loggedin/teams" className="nav-button">
            Teams
          </Button>
          <Button as={Link} to="/user/loggedin/series" className="nav-button">
            Series
          </Button>
          <Button as={Link} to="/user/loggedin/stadiums" className="nav-button">
            Stadiums
          </Button>
          <Button as={Link} to="/user/loggedin/umpires" className="nav-button">
            Umpires
          </Button>
          <Button as={Link} to="/user/loggedin/coaches" className="nav-button">
            Coaches
          </Button>
          <Button as={Link} to="/user/loggedin/dream11" className="nav-button">
            Dream11
          </Button>
        </Nav>
        <Navbar.Brand>
          <Link to="/user/loggedin/profile">
            <img
              src="/src/profile.png"
              width="40"
              height="40"
              className="d-inline-block align-top profile-icon glow-on-hover"
              alt="Profile icon"
            />
          </Link>
        </Navbar.Brand>
      </Navbar>
      <Rankings />
      <UpcomingMatches />
      <Trendingplayers players={players} />
      <RecentMatches matches={matches} />
    </div>
  );
};

export default Homepage;
