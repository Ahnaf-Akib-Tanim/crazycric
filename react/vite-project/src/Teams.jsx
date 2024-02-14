import React, { useState } from "react";
import { Button, Col, Form, Row } from "react-bootstrap";
import { Link } from "react-router-dom";
import "./Teams.css";
const Teams = () => {
  const [teamName, setTeamName] = useState("");
  const [boardName, setBoardName] = useState([]);
  const [iccRanking, setIccRanking] = useState([]);
  const [matchesWonAgainst, setMatchesWonAgainst] = useState("");
  const [teams, setTeams] = useState([]);
  const [searched, setSearched] = useState(false);

  const boardNames = ["BCB", "BCCI", "ECB", "CWI", "PCB", "CA", "NZC", "CSA", "ACB", "SLC"];
  const iccRankings = ["ODI", "T20", "Test"];
  const matchesWonAgainstTeams = ["Bangladesh", "India", "Pakistan", "Australia", "South Africa", "West Indies", "Srilanka", "New Zealand", "Afghanistan", "England"];

  const handleSearch = () => {
    console.log(teamName, boardName, iccRanking, matchesWonAgainst);
    const data = { teamName, boardName, iccRanking, matchesWonAgainst };

    fetch("http://localhost:3000/user/loggedin/teams", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    })
      .then((response) => response.json())
      .then((data) => {
        setTeams(data);
        setSearched(true);
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  };

  return (
    <div className="Teams" 
      style={{ backgroundColor: "#AFABE3", minheight: "100vh" }}
    >
      <Row className="justify-content-md-center">
        <Col md="auto">
          <Form.Control
            type="text"
            placeholder="Team name"
            value={teamName}
            onChange={(e) => setTeamName(e.target.value)}
          />
        </Col>
        <Col md="auto">
          <Form.Label>Board Name</Form.Label>
          {boardNames.map((name, index) => (
            <Form.Check
              key={`board-${index}`}
              custom
              type="checkbox"
              id={`board-${index}`}
              label={name}
              checked={boardName.includes(name)}
              onChange={() =>
                setBoardName((prev) =>
                  prev.includes(name) ? prev.filter(=> n !== name) : [...prev, name]
                )
              }
            />
          ))}
        </Col>
        <Col md="auto">
          <Form.Label>ICC Ranking</Form.Label>
          {iccRankings.map((rank, index) => (
            <Form.Check
              key={`rank-${index}`}
              custom
              type="radio"
              id={`rank-${index}`}
              label={rank}
              checked={iccRanking === rank}
              onChange={() => setIccRanking(rank)}
            />
          ))}
        </Col>
        <Col md="auto">
          <Form.Label>Most Matches Won Against</Form.Label>
          {matchesWonAgainstTeams.map((team, index) => (
            <Form.Check
              key={`match-${index}`}
              custom
              type="radio"
              id={`match-${index}`}
              label={team}
              checked={matchesWonAgainst === team}
              onChange={() => setMatchesWonAgainst(team)}
            />
          ))}
        </Col>
      </Row>
      <Button variant="primary" onClick={handleSearch}>
        Search
      </Button>
      {searched && teams.length === 0 && <p>No teams found.</p>}
      {teams.length > 0 && (
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
          {teams.map((team, index) => (
            <div key={team.team_id} style={{ width: "150px", margin: "10px", textAlign: "center" }}>
              <img
                src={team.team_image_path}
                alt={team.team_name}
                className="image-size"
                style={{
                  width: "120px",
                  height: "120px",
                  borderRadius: "50%",
                }}
              />
              <Link
                to={`/user/loggedin/Teaminfo/${team.team_id}`}
                style={{ fontSize: "18px", fontFamily: "Arial, sans-serif" }}
              >
                {team.team_name}
              </Link>
            </div>
          ))}
        </div>
      )}
    </div>
  );
};

export default Teams;
