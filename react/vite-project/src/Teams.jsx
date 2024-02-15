import React, { useState } from "react";
import { Button, Col, Form, Row } from "react-bootstrap";
import { Link } from "react-router-dom";

const Teams = () => {
  const [teamName, setTeamName] = useState("");
  const [boardName, setBoardName] = useState([]);
  const [iccRanking, setIccRanking] = useState({ rank: "", type: "" });
  const [matchesWonAgainst, setMatchesWonAgainst] = useState("");
  const [teams, setTeams] = useState([]);
  const [searched, setSearched] = useState(false);
  const [isSearchBarUsed, setIsSearchBarUsed] = useState(false);
  const [isCheckboxUsed, setIsCheckboxUsed] = useState(false);

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
    setIsSearchBarUsed(true);
    console.log(teamName, boardName, iccRanking, matchesWonAgainst);
    const data = {
      teamName,
      boardName,
      iccRanking: { rank: iccRanking.rank, type: iccRanking.type },
      matchesWonAgainst,
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
    setBoardName([]);
    setIccRanking({ rank: "", type: "" });
    setMatchesWonAgainst("");
    setIsSearchBarUsed(false);
    setIsCheckboxUsed(false);
  };

  return (
    <div
      className="Teams"
      style={{ backgroundColor: "#AFABE3", minheight: "100vh" }}
    >
      <Row className="justify-content-md-center">
        <Col md="auto">
          <Form.Control
            type="text"
            placeholder="Team name"
            value={teamName}
            onChange={(e) => setTeamName(e.target.value)}
            disabled={isCheckboxUsed}
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
              onChange={(e) => handleCheckboxChange(name, e.target.checked)}
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
              checked={iccRanking.type === rank}
              onChange={() =>
                setIccRanking({ rank: iccRanking.rank, type: rank })
              }
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
            <div
              key={team}
              style={{ width: "150px", margin: "20px", textAlign: "center" }}
            >
              <img
                src={`http://localhost:3000/country2images/${team}.png`}
                alt={team}
                className="image-size"
                style={{
                  width: "100px",
                  height: "100px",
                  borderRadius: "50%",
                  position: "relative",
                  top: "-400px",
                  left: "00px",
                }}
              />
              <Link
                to={`/user/loggedin/teaminfo/${team}`}
                style={{
                  fontSize: "15px",
                  fontFamily: "Arial, sans-serif",
                  position: "relative",
                  top: "-400px",
                  left: "00px",
                }}
              >
                {team}
              </Link>
            </div>
          ))}
        </div>
      )}
    </div>
  );
};

export default Teams;
