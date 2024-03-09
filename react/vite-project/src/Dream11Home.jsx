import React, { useState } from "react";
import { Button, Form, Modal, Table } from "react-bootstrap";
import { useNavigate } from "react-router-dom";
import "./Dream11Home.css";

const Dream11 = () => {
  const [selectedPlayers, setSelectedPlayers] = useState([]);
  const [searchQuery, setSearchQuery] = useState("");
  const [teamName, setTeamName] = useState("");
  const [selectedCoach, setSelectedCoach] = useState("");
  const [teams, setTeams] = useState([]);
  const [searchedPlayers, setSearchedPlayers] = useState([]);
  const [captain, setCaptain] = useState("");
  const [showWarning, setShowWarning] = useState(false);
  const navigate = useNavigate();
  const coaches = [
    "Chandika Hathurusingha",
    "Ravi Shastri",
    "Justin Langer",
    "Mickey Arthur",
    "Gary Stead",
    "Misbah-ul-Haq",
    "Phil Simmons",
    "Lalchand Rajput",
    "Chris Silverwood",
    "Brendon McCullum",
  ];

  const toggleWarning = () => {
    setShowWarning(!showWarning);
  };

  const handleSearch = () => {
    const data = { searchQuery };
    fetch("http://localhost:3000/user/loggedin/dream11", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("Success:", data);
        setSearchedPlayers(data);
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  };

  const addPlayerToTeam = (player) => {
    if (!selectedPlayers.find((p) => p.player_id === player.player_id)) {
      setSelectedPlayers([...selectedPlayers, player]);
    } else {
      console.log("Player already added to the team!");
    }
  };

  const removePlayerFromTeam = (playerId) => {
    setSelectedPlayers(
      selectedPlayers.filter((player) => player.player_id !== playerId)
    );
  };

  const makeDreamTeam = () => {
    if (
      teamName === "" ||
      selectedCoach === "" ||
      captain === "" ||
      selectedPlayers.length !== 11
    ) {
      console.error("Please fill all fields and select exactly 11 players");
      toggleWarning();
      return;
    }

    const dreamTeam = {
      teamName,
      selectedCoach,
      captain,
      selectedPlayers,
    };
    console.log(dreamTeam);
    fetch("http://localhost:3000/user/loggedin/dream11team", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(dreamTeam),
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("Success:", data);
        navigate("/user/loggedin");
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  };

  return (
    <div className="dream11-container">
      <div className="left-side">
        <h2>Team Formation</h2>
        <h4>Team Name: {teamName}</h4>
        <h4>Coach: {selectedCoach}</h4>
        <Form.Group controlId="captainSelect">
          <Form.Label>Captain:</Form.Label>
          <Form.Control
            as="select"
            value={captain}
            onChange={(e) => setCaptain(e.target.value)}
          >
            <option value="">Select Captain</option>
            {selectedPlayers.map((player, index) => (
              <option key={index} value={player.player_name}>
                {player.player_name}
              </option>
            ))}
          </Form.Control>
        </Form.Group>
        <Table striped bordered hover>
          <thead>
            <tr>
              <th style={{ color: "#6F00FF" }}>#</th>
              <th style={{ color: "#6F00FF" }}>Player Name</th>
              <th style={{ color: "#6F00FF" }}>Player Role</th>
              <th style={{ color: "#6F00FF" }}>Team</th>
              <th style={{ color: "#6F00FF" }}>Actions</th>
            </tr>
          </thead>
          <tbody>
            {selectedPlayers.map((player, index) => (
              <tr key={index}>
                <td>{index + 1}</td>
                <td>{player.player_name}</td>
                <td>{player.player_role}</td>
                <td>{player.team_name}</td>
                <td>
                  <Button
                    variant="danger"
                    onClick={() => removePlayerFromTeam(player.player_id)}
                  >
                    Delete
                  </Button>
                </td>
              </tr>
            ))}
          </tbody>
        </Table>
      </div>

      <div className="right-side">
        <h2>Add Team Details</h2>
        <Form.Control
          type="text"
          placeholder="Team Name"
          value={teamName}
          onChange={(e) => setTeamName(e.target.value)}
        />
        <Form.Control
          as="select"
          value={selectedCoach}
          onChange={(e) => setSelectedCoach(e.target.value)}
        >
          <option value="">Select Coach</option>
          {coaches.map((coach, index) => (
            <option key={index} value={coach}>
              {coach}
            </option>
          ))}
        </Form.Control>
        <h2>Search Players</h2>
        <Form.Control
          type="text"
          placeholder="Search Players"
          value={searchQuery}
          onChange={(e) => setSearchQuery(e.target.value)}
        />
        <Button onClick={handleSearch}>Search</Button>

        <ul className="searched-players">
          {searchedPlayers.map((player) => (
            <li key={player.id}>
              <img
                src={`http://localhost:3000/images/${player.player_name}.jpeg`}
                alt={player.player_name}
                className="player-image"
              />
              {player.player_name} - {player.team_name} - {player.player_role}
              <Button onClick={() => addPlayerToTeam(player)} className="gotit">
                Add Player
              </Button>
            </li>
          ))}
        </ul>

        <Button onClick={makeDreamTeam}>Make Dream Team</Button>
      </div>

      {/* Warning Modal */}
      <Modal show={showWarning} onHide={toggleWarning}>
        <Modal.Header closeButton>
          <Modal.Title>Warning</Modal.Title>
        </Modal.Header>
        <Modal.Body>Please select exactly 11 players.</Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={toggleWarning}>
            Close
          </Button>
        </Modal.Footer>
      </Modal>
    </div>
  );
};

export default Dream11;
