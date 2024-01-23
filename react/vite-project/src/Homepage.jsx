// eslint-disable-next-line no-unused-vars
import React from "react";
import { Button, Nav, Navbar } from "react-bootstrap";
import { Link } from "react-router-dom";
import "./homepage.css";

const Homepage = () => {
  return (
    <div className="homepage">
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
          <Button as={Link} to="/teams" className="nav-button">
            Teams
          </Button>
          <Button as={Link} to="/series" className="nav-button">
            Series
          </Button>
          <Button as={Link} to="/stadiums" className="nav-button">
            Stadiums
          </Button>
          <Button as={Link} to="/umpires" className="nav-button">
            Umpires
          </Button>
          <Button as={Link} to="/recordbook" className="nav-button">
            Recordbook
          </Button>
          <Button as={Link} to="/dream11" className="nav-button">
            Dream11
          </Button>
        </Nav>
        <Navbar.Brand>
          <img
            src="/src/profile.png"
            width="40"
            height="40"
            className="d-inline-block align-top profile-icon"
            alt="Profile icon"
          />
        </Navbar.Brand>
      </Navbar>
    </div>
  );
};

export default Homepage;
