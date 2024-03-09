import React, { useEffect, useState } from "react";
import { Button, Col, Container, Form, Row, Table } from "react-bootstrap";
import { useParams } from "react-router-dom";
import "./Dream11update.css";

const Dream11Update = () => {
  const { userid } = useParams();
  const [teamInfo, setTeamInfo] = useState([]);
  const [updatedPlayers, setUpdatedPlayers] = useState([]);
  const [teamName, setTeamName] = useState("");
  const [selectedCoach, setSelectedCoach] = useState("");
  const [captain, setCaptain] = useState("");
  const [searchQuery, setSearchQuery] = useState("");
  const [searchedPlayers, setSearchedPlayers] = useState([]);
  const [error, setError] = useState("");

  useEffect(() => {
    // Fetch team info based on user ID
    fetchTeamInfo();
  }, [userid]);
  console.log(userid);

  const fetchTeamInfo = async () => {
    try {
      const response = await fetch(
        `http://localhost:3000/user/loggedin/Dream11update/${userid}`
      );
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
        console.log("HTTP error! status: ${response.status}");
      }
      const data = await response.json();
      console.log(data);
      // Update state with fetched team info
      setTeamInfo(data);

      const players = [];
      for (let i = 1; i <= 11; i++) {
        players.push({
          player_name: data[0][`player${i}`],
          imagePath: data[0][`player${i}_image_path`],
          player_role: data[0][`player${i}_role`],
          team_name: data[0][`player${i}_team_name`],
        });
      }

      // Set team name, coach, and captain
      setUpdatedPlayers(players);
      setTeamName(data[0].team_name);
      setSelectedCoach(data[0].coach_name);
      setCaptain(data[0].captain);
    } catch (error) {
      console.error("Error fetching team info:", error);
    }
  };

  const handlePlayerDelete = (playerId) => {
    // Filter out the player with the given ID
    const updated = updatedPlayers.filter(
      (player) => player.player_id !== playerId
    );
    setUpdatedPlayers(updated);
  };

  const handleMoveUp = (index) => {
    if (index > 0) {
      const updated = [...updatedPlayers];
      // Swap positions with the previous player
      [updated[index - 1], updated[index]] = [
        updated[index],
        updated[index - 1],
      ];
      setUpdatedPlayers(updated);
    }
  };

  const handleMoveDown = (index) => {
    if (index < updatedPlayers.length - 1) {
      const updated = [...updatedPlayers];
      // Swap positions with the next player
      [updated[index], updated[index + 1]] = [
        updated[index + 1],
        updated[index],
      ];
      setUpdatedPlayers(updated);
    }
  };

  const handleSearch = async () => {
    try {
      const response = await fetch(
        "http://localhost:3000/user/loggedin/dream11",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({ searchQuery }),
        }
      );
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }
      const data = await response.json();
      setSearchedPlayers(data);
    } catch (error) {
      console.error("Error searching players:", error);
    }
  };

  const handleAddPlayerToTeam = (player) => {
    if (!updatedPlayers.find((p) => p.player_id === player.player_id)) {
      setUpdatedPlayers([...updatedPlayers, player]);
    } else {
      console.log("Player already added to the team!");
    }
  };

  const handleUpdateTeam = async () => {
    if (updatedPlayers.length !== 11) {
      setError("Please select exactly 11 players");
      return;
    }
    const updatedTeam = {
      teamName,
      coach: selectedCoach,
      captain,
      players: updatedPlayers,
    };
    try {
      const response = await fetch(
        "http://localhost:3000/user/loggedin/updateDream11",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(updatedTeam),
        }
      );
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }
      const data = await response.json();
      console.log(data);
      // Handle success
    } catch (error) {
      console.error("Error updating dream11 team:", error);
    }
  };

  return (
    <Container fluid className="bg">
      <h1 className="mt-5 text-center">Update Dream11 Team</h1>
      <Row className="justify-content-between">
        <Col lg={8} md={12} className="mb-4">
          <h4 className="mb-3">Team Name: {teamName}</h4>
          <h4 className="mb-3">Coach: {selectedCoach}</h4>
          <Form.Group controlId="captainSelect" className="mb-3">
            <Form.Label>Captain:</Form.Label>
            <Form.Control
              as="select"
              value={captain}
              onChange={(e) => setCaptain(e.target.value)}
            >
              <option value="">Select Captain</option>
              {updatedPlayers.map((player, index) => (
                <option key={index} value={player.player_name}>
                  {player.player_name}
                </option>
              ))}
            </Form.Control>
          </Form.Group>
          <Table striped bordered hover className="mt-4 table-striped">
            <thead>
              <tr>
                <th>#</th>
                <th>Player Name</th>
                <th>Player Image</th>
                <th>Role</th>
                <th>Team</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              {updatedPlayers.map((player, index) => (
                <tr key={index}>
                  <td>{index + 1}</td>
                  <td>{player.player_name}</td>
                  <td>
                    <img
                      src={`http://localhost:3000/images/${player.player_name}.jpeg`}
                      alt={player.player_name}
                      style={{ width: "100px", height: "auto" }}
                    />
                  </td>
                  <td>{player.player_role}</td>
                  <td>{player.team_name}</td>
                  <td>
                    <Button
                      variant="danger"
                      onClick={() => handlePlayerDelete(player.player_id)}
                    >
                      Delete
                    </Button>
                    <Button onClick={() => handleMoveUp(index)}>Move Up</Button>
                    <Button onClick={() => handleMoveDown(index)}>
                      Move Down
                    </Button>
                  </td>
                </tr>
              ))}
            </tbody>
          </Table>
          {error && <p className="text-danger">{error}</p>}
        </Col>
        <Col lg={4} md={12}>
          <div className="search-section text-center">
            <h2>Search Players</h2>
            <Form.Control
              type="text"
              placeholder="Search Players"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
            />
            <Button className="mt-3" onClick={handleSearch}>
              Search
            </Button>
            <ul className="searched-players mt-4">
              {searchedPlayers.map((player) => (
                <li key={player.id} className="mb-3">
                  {player.player_name} - {player.team_name} -{" "}
                  {player.player_role}
                  <Button
                    onClick={() => handleAddPlayerToTeam(player)}
                    className="gotit mt-2"
                  >
                    Add Player
                  </Button>
                </li>
              ))}
            </ul>
          </div>
        </Col>
      </Row>
      <Row>
        <Col>
          <Button onClick={handleUpdateTeam} className="mt-3">
            Update Dream11 Team
          </Button>
        </Col>
      </Row>
    </Container>
  );
};

export default Dream11Update;
