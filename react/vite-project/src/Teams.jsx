import React, { useState } from "react";
import { Button, Col, Form, Row } from "react-bootstrap";
import { Link } from "react-router-dom";
import "./Teams.css";

const Teams = () => {
  const [teamName, setTeamName] = useState("");
  const [boardName, setBoardName] = useState("");
  const [iccRanking, setIccRanking] = useState({ rank: "", type: "" });
  const [matchesWonAgainst, setMatchesWonAgainst] = useState("");
  const [teams, setTeams] = useState([]);
  const [searched, setSearched] = useState(false);
  const [isCheckboxUsed, setIsCheckboxUsed] = useState(false);
  const [coachName, setCoachName] = useState("");
  const [playingMostMatches, setPlayingMostMatches] = useState(false);
  const boardNames = [
    "BCB",
    "BCCI",
    "ECB",
    "CWI",
    "PCB",
    "CA",
    "NZC",
    "CSA",
    "ACB",
    "SLC",
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
  const iccRankings = ["ODI", "T20", "Test"];
  const matchesWonAgainstTeams = [
    "Bangladesh",
    "India",
    "Pakistan",
    "Australia",
    "South Africa",
    "West Indies",
    "Srilanka",
    "New Zealand",
    "Afghanistan",
    "England",
  ];

  const handleSearch = () => {
    console.log(teamName, boardName, iccRanking, matchesWonAgainst);
    const data = {
      teamName,
      boardName,
      iccRanking: { rank: iccRanking.rank, type: iccRanking.type },
      coachName,
      playingMostMatches,
    };

    fetch("http://localhost:3000/user/loggedin/teams", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    })
      .then((response) => response.json())
      .then((data) => {
        console.log(data);
        setTeams(data);
        setSearched(true);
        resetFields();
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  };

  const handleCheckboxChange = (name, isChecked) => {
    setIsCheckboxUsed(isChecked);
    setBoardName((prev) =>
      prev.includes(name) ? prev.filter((n) => n !== name) : [...prev, name]
    );
  };

  const resetFields = () => {
    setTeamName("");
    setBoardName("");
    setIccRanking({ rank: "", type: "" });
    setMatchesWonAgainst("");
    setIsCheckboxUsed(false);
  };

  return (
    <div className="Teams">
      <Row className="criteria-container">
        <Col md="auto" className="criteria-item" style={{ marginTop: "35px" }}>
          <Form.Control
            type="text"
            placeholder="Team name"
            value={teamName}
            onChange={(e) => setTeamName(e.target.value)}
            disabled={isCheckboxUsed}
          />
        </Col>
        <Col md="auto" className="criteria-item">
          <Form.Label>Board Name</Form.Label>
          <Form.Control
            as="select"
            value={boardName}
            onChange={(e) => setBoardName(e.target.value)}
          >
            <option value="">Select Board Name</option>
            {boardNames.map((name, index) => (
              <option key={`board-${index}`} value={name}>
                {name}
              </option>
            ))}
          </Form.Control>
        </Col>
        <Col md="auto" className="criteria-item">
          <Form.Label>Coach Name</Form.Label>
          <Form.Control
            as="select"
            value={coachName}
            onChange={(e) => setCoachName(e.target.value)}
          >
            <option value="">Select Coach Name</option>
            {coaches.map((name, index) => (
              <option key={`coach-${index}`} value={name}>
                {name}
              </option>
            ))}
          </Form.Control>
        </Col>
        <Col md="auto" className="criteria-item">
          <Form.Label>ICC Ranking</Form.Label>
          {iccRankings.map((rank, index) => (
            <Form.Check
              key={`rank-${index}`}
              custom
              type="radio"
              id={`rank-${index}`}
              label={rank}
              checked={iccRanking.type === rank}
              onChange={() =>
                setIccRanking({ rank: iccRanking.rank, type: rank })
              }
            />
          ))}
        </Col>
        <Col md="auto" className="criteria-item" style={{ marginTop: "35px" }}>
          <Button variant="primary" size="lg" onClick={handleSearch}>
            Search
          </Button>
        </Col>
      </Row>

      {searched && teams.length === 0 && <p>No teams found.</p>}
      {teams.length > 0 && (
        <div className="team-container">
          {teams.map((team, index) => (
            <Link
              key={team}
              to={`/user/loggedin/teaminfo/${team}`}
              className="team-item"
            >
              <img
                src={`http://localhost:3000/country2images/${team}.png`}
                alt={team}
                className="team-image"
              />
              <span className="team-name" style={{ color: "lightblue" }}>
                {team}
              </span>
            </Link>
          ))}
        </div>
      )}
    </div>
  );
};

export default Teams;
