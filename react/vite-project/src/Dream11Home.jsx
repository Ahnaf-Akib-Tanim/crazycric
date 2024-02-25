import React, { useState } from "react";
import { Button, Form } from "react-bootstrap";
import { Navigate } from "react-router-dom";
import "./Dream11Home.css";

const Dream11 = () => {
  const [selectedPlayers, setSelectedPlayers] = useState([]);
  const [searchQuery, setSearchQuery] = useState("");
  const [teamName, setTeamName] = useState("");
  const [selectedCoach, setSelectedCoach] = useState("");
  const [teams, setTeams] = useState([]);
  const [searchedPlayers, setSearchedPlayers] = useState([]);
  const [captain, setCaptain] = useState("");

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
    // Check if the player is already in the selectedPlayers list
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
      return;
    }

    const dreamTeam = {
      teamName,
      selectedCoach,
      captain,
      selectedPlayers,
    };

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
        Navigate("/user/loggedin");
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
        <ul className="player-list">
          {selectedPlayers.map((player, index) => (
            <li key={index}>
              {index + 1}.
              <div className="player-item">
                <img
                  src={`http://localhost:3000/images/${player.player_name}.jpeg`}
                  alt={player.player_name}
                  className="player-image"
                />
                {player.player_name} - {player.player_role} - {player.team_name}
                <Button
                  className="delete-button"
                  onClick={() => removePlayerFromTeam(player.player_id)}
                >
                  Delete
                </Button>
              </div>
            </li>
          ))}
        </ul>
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
    </div>
  );
};

export default Dream11;
