import React, { useEffect, useState } from "react";
import { Button, Form, FormControl, Nav, Navbar } from "react-bootstrap";
import { Link } from "react-router-dom";
import "./AdminHome.css";

function AdminHome() {
  const [searchQuery, setSearchQuery] = useState("");
  const [players, setPlayers] = useState([]);

  const handleSearch = () => {
    console.log("Searching for:", searchQuery);
    fetch("http://localhost:3000/admin/loggedin", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ searchQuery }),
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("Success:", data);
        setPlayers(data);
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  };
  const handleinsert = () => {
    window.location.href = "/admin/loggedin/insert";
  };

  const handleDelete = (playerId) => {
    fetch(`http://localhost:3000/admin/delete/player/${playerId}`, {
      method: "DELETE",
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("Player deleted:", data);
        setPlayers(players.filter((player) => player.player_id !== playerId));
      })
      .catch((error) => {
        console.error("Error deleting player:", error);
      });
  };

  useEffect(() => {
    // Fetch initial player data
    fetch("http://localhost:3000/admin/loggedin")
      .then((response) => response.json())
      .then((data) => {
        console.log("Initial player data:", data);
        setPlayers(data);
      })
      .catch((error) => {
        console.error("Error fetching initial player data:", error);
      });
  }, []);

  return (
    <div className="bg">
      <Navbar className="transparent-navbar" bg="dark" variant="dark">
        <Navbar.Brand>Welcome back, Admin</Navbar.Brand>
        <Nav className="mr-auto">
          <Form inline>
            <FormControl
              type="text"
              placeholder="Search Player"
              className="coolBeans"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
            />
            <Button
              className="coolBeans"
              style={{ color: "#fff" }}
              onClick={handleSearch}
            >
              Search
            </Button>
          </Form>
        </Nav>
        <Nav>
          <Button
            className="coolBeans"
            style={{ color: "#fff" }}
            onClick={handleinsert}
          >
            Insert Player
          </Button>
        </Nav>
      </Navbar>

      <div
        style={{
          display: "flex",
          flexWrap: "wrap",
          justifyContent: "center",
          marginTop: "20px",
        }}
      >
        {players.map((player) => (
          <div key={player.player_id} className="player-itemAdmin">
            <img
              src={player.player_image_path}
              alt={player.player_name}
              style={{
                width: "100px",
                height: "100px",
                borderRadius: "50%",
                overflow: "hidden",
                padding: "10px",
              }}
            />
            <Link
              to={`/user/loggedin/playerinfo/${player.player_id}`}
              className="player-name-linkAdmin"
              style={{ marginRight: "15px" }}
            >
              {player.player_name}
            </Link>

            <Button className="update-button">
              <Link
                to={`/admin/loggedin/update/${player.player_id}`}
                style={{ color: "#fff", textDecoration: "none" }}
              >
                Update
              </Link>
            </Button>
          </div>
        ))}
      </div>
    </div>
  );
}

export default AdminHome;
