import React, { useState } from "react";
import { Button, Form, FormControl, Nav, Navbar } from "react-bootstrap";

function AdminHome() {
  const [searchQuery, setSearchQuery] = useState("");
  const [players, setPlayers] = useState([]);

  // Function to handle search
  const handleSearch = () => {
    console.log("Searching for:", searchQuery);
    const data = { searchQuery };
    fetch("http://localhost:3000/admin/loggedin", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("Success:", data);
        setPlayers(data); // Update the list of players
        setSearchQuery("");
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  };

  // Function to handle player deletion
  const handleDelete = (playerId) => {
    // Send a request to the server to delete the player with the given ID
    fetch(`http://localhost:3000/admin/delete/player/${playerId}`, {
      method: "DELETE",
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("Player deleted:", data);
        // Update the list of players after successful deletion
        setPlayers(players.filter((player) => player.id !== playerId));
      })
      .catch((error) => {
        console.error("Error deleting player:", error);
      });
  };

  return (
    <div>
      <Navbar bg="dark" variant="dark">
        <Navbar.Brand>Welcome back, Admin</Navbar.Brand>
        <Nav className="mr-auto">
          <Form inline>
            <FormControl
              type="text"
              placeholder="Search Player"
              className="mr-sm-2"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
            />
            <Button variant="outline-light" onClick={handleSearch}>
              Search
            </Button>
          </Form>
        </Nav>
        <Nav>
          <Button variant="success" className="mr-2">
            Insert Player
          </Button>
          <Button variant="primary">Update Player</Button>
        </Nav>
      </Navbar>

      <div
        style={{ display: "flex", flexWrap: "wrap", justifyContent: "center" }}
      >
        {players.map((player, index) => (
          <div key={index} style={{ margin: "10px" }}>
            <img
              src={`http://localhost:3000/images/${player.player_name}.png`}
              alt={player.player_name}
              style={{ width: "100px", height: "100px" }}
            />
            <p>{player.name}</p>
            <Button
              variant="danger"
              onClick={() => handleDelete(player.player_id)}
            >
              Delete
            </Button>
          </div>
        ))}
      </div>
    </div>
  );
}

export default AdminHome;
