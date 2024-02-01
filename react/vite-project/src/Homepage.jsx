import React from "react";
import { Button, Nav, Navbar } from "react-bootstrap";
import { Link } from "react-router-dom";
import "./homepage.css";

const Homepage = () => {
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
    </div>
  );
};

export default Homepage;
