// eslint-disable-next-line no-unused-vars
import React, { useState } from "react";
import { Button, Col, Form, Row } from "react-bootstrap";
import { Link } from "react-router-dom";
import "./Players.css";
const Players = () => {
  const [text, setText] = useState("");
  const [team, setTeam] = useState([]);
  const [role, setRole] = useState([]);
  const [battingStyle, setBattingStyle] = useState([]);
  const [showTeams, setShowTeams] = useState(false);
  const [showRoles, setShowRoles] = useState(false);
  const [showStyles, setShowStyles] = useState(false);
  const [players, setPlayers] = useState([]);
  const [searched, setSearched] = useState(false);
  const teams = [
    "Bangladesh",
    "India",
    "Pakistan",
    "Srilanka",
    "Afganistan",
    "New Zealand",
    "South Africa",
    "Australia",
    "West Indies",
    "England",
  ];
  const roles = ["Batsman", "Bowler", "Wk", "All-Rounder"];
  const styles = ["Left-Handed", "Right-Handed"];

  const handleSearch = () => {
    console.log(text, team, role, battingStyle);

    const data = { text, team, role, battingStyle };

    fetch("http://localhost:3000/user/loggedin/players", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("Success:", data);
        setPlayers(data);
        setSearched(true);
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  };

  return (
    <div
      className="Players"
      style={{ backgroundColor: "#AFABE3", minheight: "100vh" }}
    >
      <Row className="justify-content-md-center">
        <Col md="auto">
          <Form.Control
            type="text"
            placeholder="Player name"
            value={text}
            onChange={(e) => setText(e.target.value)}
          />
        </Col>
        <Col md="auto">
          <Form.Label
            className="custom-label"
            onClick={() => setShowTeams(!showTeams)}
          >
            Team Name
          </Form.Label>
          {showTeams &&
            teams.map((teamName, index) => (
              <Form.Check
                key={`team-${index}`}
                custom
                type="checkbox"
                id={`team-${index}`}
                label={teamName}
                checked={team.includes(teamName)}
                onChange={() =>
                  setTeam((prev) =>
                    prev.includes(teamName)
                      ? prev.filter((t) => t !== teamName)
                      : [...prev, teamName]
                  )
                }
              />
            ))}
        </Col>
        <Col md="auto">
          <Form.Label
            className="custom-label"
            onClick={() => setShowRoles(!showRoles)}
          >
            Player Role
          </Form.Label>
          {showRoles &&
            roles.map((roleName, index) => (
              <Form.Check
                key={`role-${index}`}
                custom
                type="checkbox"
                id={`role-${index}`}
                label={roleName}
                checked={role.includes(roleName)}
                onChange={() =>
                  setRole((prev) =>
                    prev.includes(roleName)
                      ? prev.filter((r) => r !== roleName)
                      : [...prev, roleName]
                  )
                }
              />
            ))}
        </Col>
        <Col md="auto">
          <Form.Label
            className="custom-label"
            onClick={() => setShowStyles(!showStyles)}
          >
            Batting Style
          </Form.Label>
          {showStyles &&
            styles.map((styleName, index) => (
              <Form.Check
                key={`style-${index}`}
                custom
                type="checkbox"
                id={`style-${index}`}
                label={styleName}
                checked={battingStyle.includes(styleName)}
                onChange={() =>
                  setBattingStyle((prev) =>
                    prev.includes(styleName)
                      ? prev.filter((s) => s !== styleName)
                      : [...prev, styleName]
                  )
                }
              />
            ))}
        </Col>
      </Row>
      <Button variant="primary" onClick={handleSearch}>
        Search
      </Button>
      {searched && players.length === 0 && <p>No players found.</p>}
      {players.length > 0 && (
        <div
          style={{
            display: "flex",
            flexDirection: "row",
            flexWrap: "wrap",
            justifyContent: "center",
            marginTop: "50px",
            maxWidth: "900px",
            margin: "auto",
          }}
        >
          {players.map((player, index) => {
            console.log(player.player_image_path);
            return (
              <div
                key={player.player_id}
                style={{ width: "150px", margin: "10px", textAlign: "center" }}
              >
                <img
                  src={player.player_image_path}
                  alt={player.player_name}
                  className="image-size"
                  style={{
                    width: "120px",
                    height: "120px",
                    borderRadius: "50%",
                  }}
                />
                <Link
                  to={`/user/loggedin/playerinfo/${player.player_id}`}
                  style={{ fontSize: "18px", fontFamily: "Arial, sans-serif" }}
                >
                  {player.player_name}
                </Link>
              </div>
            );
          })}
        </div>
      )}
    </div>
  );
};

export default Players;
