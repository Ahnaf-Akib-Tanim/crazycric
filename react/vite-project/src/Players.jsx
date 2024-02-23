// export default Players;
// eslint-disable-next-line no-unused-vars
import React, { useState } from "react";
import { Button, Col, Form, Row } from "react-bootstrap";
import { Link } from "react-router-dom";
import "./Players.css";
const Players = () => {
  const [bowlingStyle, setBowlingStyle] = useState([]);
  const [showBowlingStyles, setShowBowlingStyles] = useState(false);
  const [coach, setcoach] = useState([]);
  const [showcoach, setshowcoach] = useState(false);
  const [text, setText] = useState("");
  const [team, setTeam] = useState([]);
  const [role, setRole] = useState([]);
  const [battingStyle, setBattingStyle] = useState([]);
  const [showTeams, setShowTeams] = useState(false);
  const [showRoles, setShowRoles] = useState(false);
  const [showStyles, setShowStyles] = useState(false);
  const [players, setPlayers] = useState([]);
  const [searched, setSearched] = useState(false);
  const [filterMostHundreds, setFilterMostHundreds] = useState(false);
  const [filtermost5wickets, setfiltermost5wickets] = useState(false);
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
  const bowlingStyles = [
    "Left Arm Fast-Medium",
    "Right Arm Fast-Medium",
    "Right Arm Offbreak",
    "Right Arm Off Spin",
    "Left Arm Leg Spin",
    "Right Arm Legbreak",
    "Left Arm Orthodox",
    "Right Arm Medium",
    "Right Arm Leg Spin",
    "Right Arm Fast",
    "Left Arm Fast",
  ];
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
  const roles = ["Batsman", "Bowler", "Wk", "All-Rounder"];
  const styles = ["Left-Handed", "Right-Handed"];

  const handleSearch = () => {
    console.log(text, team, role, battingStyle, bowlingStyle, coach);
    setPlayers([]);
    const data = {
      text,
      team,
      role,
      battingStyle,
      bowlingStyle,
      coach,
      filterMostHundreds,
      filtermost5wickets,
    };

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
      style={{
        backgroundColor: "#AFABE3",
        minheight: "100vh",
        padding: "10px",
      }}
    >
      <Row className="justify-content-md-center custom-row">
        <Col md="auto">
          <Form.Control
            className="custom-input"
            style={{
              width: "200px",
              margin: "10px",
              textAlign: "center",
              fontSize: "14px",
            }}
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
                className="custom-checkbox"
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
                className="custom-checkbox"
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
            onClick={() => setShowBowlingStyles(!showBowlingStyles)}
          >
            Bowling Style
          </Form.Label>
          {showBowlingStyles &&
            bowlingStyles.map((styleName, index) => (
              <Form.Check
                className="custom-checkbox"
                key={`bowlingStyle-${index}`}
                custom
                type="checkbox"
                id={`bowlingStyle-${index}`}
                label={styleName}
                checked={bowlingStyle.includes(styleName)}
                onChange={() =>
                  setBowlingStyle((prev) =>
                    prev.includes(styleName)
                      ? prev.filter((s) => s !== styleName)
                      : [...prev, styleName]
                  )
                }
              />
            ))}
        </Col>

        <Col md="auto">
          <Form.Label
            className="custom-label"
            onClick={() => setshowcoach(!showcoach)}
          >
            Coach Name
          </Form.Label>
          {showcoach &&
            coaches.map((styleName, index) => (
              <Form.Check
                className="custom-checkbox"
                key={`coach-${index}`}
                custom
                type="checkbox"
                id={`coach-${index}`}
                label={styleName}
                checked={coach.includes(styleName)}
                onChange={() =>
                  setcoach((prev) =>
                    prev.includes(styleName)
                      ? prev.filter((s) => s !== styleName)
                      : [...prev, styleName]
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
                className="custom-checkbox"
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
        <Col md="auto">
          <Form.Check
            className="custom-checkbox"
            custom
            type="checkbox"
            id="filterMostHundreds"
            label="Filter with most 100's"
            style={{ position: "relative", top: "10px" }}
            checked={filterMostHundreds}
            onChange={() => setFilterMostHundreds(!filterMostHundreds)}
          />
        </Col>
        <Col md="auto">
          <Form.Check
            className="custom-checkbox"
            custom
            type="checkbox"
            id="filtermost5wickets"
            label="Filter Most Fifers"
            style={{ position: "relative", top: "10px" }}
            checked={filtermost5wickets}
            onChange={() => setfiltermost5wickets(!filtermost5wickets)}
          />
        </Col>
        <Col md="auto">
          {/* Search button */}
          <Button
            variant="primary"
            //size less
            size="normal"
            onClick={handleSearch}
            className="search-button"
          >
            Search
          </Button>
        </Col>
      </Row>

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
