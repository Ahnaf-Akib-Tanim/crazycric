// import React, { useState } from "react";
// import { Button, Col, Form, Row } from "react-bootstrap";
// import { Link } from "react-router-dom";

// const Teams = () => {
//   const [teamName, setTeamName] = useState("");
//   const [boardName, setBoardName] = useState([]);
//   const [iccRanking, setIccRanking] = useState({ rank: "", type: "" });
//   const [matchesWonAgainst, setMatchesWonAgainst] = useState("");
//   const [teams, setTeams] = useState([]);
//   const [searched, setSearched] = useState(false);
//   const [isSearchBarUsed, setIsSearchBarUsed] = useState(false);
//   const [isCheckboxUsed, setIsCheckboxUsed] = useState(false);
//   const [coachName, setCoachName] = useState("");
//   const [playingMostMatches, setPlayingMostMatches] = useState(false);
//   const boardNames = [
//     "BCB",
//     "BCCI",
//     "ECB",
//     "CWI",
//     "PCB",
//     "CA",
//     "NZC",
//     "CSA",
//     "ACB",
//     "SLC",
//   ];
//   const coaches = [
//     "Chandika Hathurusingha",
//     "Ravi Shastri",
//     "Justin Langer",
//     "Mickey Arthur",
//     "Gary Stead",
//     "Misbah-ul-Haq",
//     "Phil Simmons",
//     "Lalchand Rajput",
//     "Chris Silverwood",
//     "Brendon McCullum",
//   ];
//   const iccRankings = ["ODI", "T20", "Test"];
//   const matchesWonAgainstTeams = [
//     "Bangladesh",
//     "India",
//     "Pakistan",
//     "Australia",
//     "South Africa",
//     "West Indies",
//     "Srilanka",
//     "New Zealand",
//     "Afghanistan",
//     "England",
//   ];

//   const handleSearch = () => {
//     setIsSearchBarUsed(true);
//     console.log(teamName, boardName, iccRanking, matchesWonAgainst);
//     const data = {
//       teamName,
//       boardName,
//       iccRanking: { rank: iccRanking.rank, type: iccRanking.type },
//       coachName,
//       playingMostMatches,
//     };

//     fetch("http://localhost:3000/user/loggedin/teams", {
//       method: "POST",
//       headers: {
//         "Content-Type": "application/json",
//       },
//       body: JSON.stringify(data),
//     })
//       .then((response) => response.json())
//       .then((data) => {
//         console.log(data);
//         setTeams(data);
//         setSearched(true);
//         resetFields();
//       })
//       .catch((error) => {
//         console.error("Error:", error);
//       });
//   };

//   const handleCheckboxChange = (name, isChecked) => {
//     setIsCheckboxUsed(isChecked);
//     setBoardName((prev) =>
//       prev.includes(name) ? prev.filter((n) => n !== name) : [...prev, name]
//     );
//   };

//   const resetFields = () => {
//     setTeamName("");
//     setBoardName([]);
//     setIccRanking({ rank: "", type: "" });
//     setMatchesWonAgainst("");
//     setIsSearchBarUsed(false);
//     setIsCheckboxUsed(false);
//   };

//   return (
//     <div
//       className="Teams"
//       style={{ backgroundColor: "#AFABE3", minheight: "100vh" }}
//     >
//       <Row className="justify-content-md-center">
//         <Col md="auto">
//           <Form.Control
//             type="text"
//             placeholder="Team name"
//             style={{
//               position: "relative",
//               top: "50px",
//               left: "-50",
//               width: "30",
//             }}
//             value={teamName}
//             onChange={(e) => setTeamName(e.target.value)}
//             disabled={isCheckboxUsed}
//           />
//         </Col>
//         <Col md="auto">
//           <Form.Label>Board Name</Form.Label>
//           <Form.Control
//             as="select"
//             value={boardName}
//             style={{ position: "relative", top: "10px", left: "-50" }}
//             onChange={(e) => setBoardName(e.target.value)}
//           >
//             {boardNames.map((name, index) => (
//               <option key={`board-${index}`}>{name}</option>
//             ))}
//           </Form.Control>
//         </Col>
//         <Col md="auto">
//           <Form.Label>Coach Name</Form.Label>
//           <Form.Control
//             as="select"
//             value={coachName}
//             style={{ position: "relative", top: "10px", left: "-50" }}
//             onChange={(e) => setCoachName(e.target.value)}
//           >
//             {coaches.map((name, index) => (
//               <option key={`coach-${index}`}>{name}</option>
//             ))}
//           </Form.Control>
//         </Col>
//         <Col md="auto">
//           <Form.Check
//             custom
//             type="checkbox"
//             id="playing-most-matches"
//             label="Playing Most Number of Matches"
//             checked={playingMostMatches}
//             onChange={(e) => setPlayingMostMatches(e.target.checked)}
//           />
//         </Col>

//         <Col md="auto">
//           <Form.Label>ICC Ranking</Form.Label>
//           {iccRankings.map((rank, index) => (
//             <Form.Check
//               key={`rank-${index}`}
//               custom
//               type="radio"
//               id={`rank-${index}`}
//               label={rank}
//               checked={iccRanking.type === rank}
//               onChange={() =>
//                 setIccRanking({ rank: iccRanking.rank, type: rank })
//               }
//             />
//           ))}
//         </Col>
//       </Row>
//       <Button variant="primary" onClick={handleSearch}>
//         Search
//       </Button>
//       {searched && teams.length === 0 && <p>No teams found.</p>}
//       {teams.length > 0 && (
//         <div
//           style={{
//             display: "flex",
//             flexDirection: "row",
//             flexWrap: "wrap",
//             justifyContent: "center",
//             marginTop: "50px",
//             maxWidth: "900px",
//             margin: "auto",
//           }}
//         >
//           {teams.map((team, index) => (
//             <div
//               key={team}
//               style={{ width: "150px", margin: "20px", textAlign: "center" }}
//             >
//               <img
//                 src={`http://localhost:3000/country2images/${team}.png`}
//                 alt={team}
//                 className="image-size"
//                 style={{
//                   width: "100px",
//                   height: "100px",
//                   borderRadius: "50%",
//                   position: "relative",
//                   top: "-400px",
//                   left: "00px",
//                 }}
//               />
//               <Link
//                 to={`/user/loggedin/teaminfo/${team}`}
//                 style={{
//                   fontSize: "15px",
//                   fontFamily: "Arial, sans-serif",
//                   position: "relative",
//                   top: "-400px",
//                   left: "00px",
//                 }}
//               >
//                 {team}
//               </Link>
//             </div>
//           ))}
//         </div>
//       )}
//     </div>
//   );
// };
// export default Teams;

// import React, { useState } from "react";
// import { Button, Col, Form, Row } from "react-bootstrap";
// import { Link } from "react-router-dom";
// import "./Teams.css";

// const Teams = () => {
//   const [teamName, setTeamName] = useState("");
//   const [boardName, setBoardName] = useState("");
//   const [iccRanking, setIccRanking] = useState("");
//   const [matchesWonAgainst, setMatchesWonAgainst] = useState("");
//   const [teams, setTeams] = useState([]);
//   const [searched, setSearched] = useState(false);

//   const boardNames = [
//     "BCB",
//     "BCCI",
//     "ECB",
//     "CWI",
//     "PCB",
//     "CA",
//     "NZC",
//     "CSA",
//     "ACB",
//     "SLC",
//   ];
//   const iccRankings = ["ODI", "T20", "Test"];
//   const matchesWonAgainstTeams = [
//     "Bangladesh",
//     "India",
//     "Pakistan",
//     "Australia",
//     "South Africa",
//     "West Indies",
//     "Srilanka",
//     "New Zealand",
//     "Afghanistan",
//     "England",
//   ];

//   const handleSearch = () => {
//     console.log(teamName, boardName, iccRanking, matchesWonAgainst);
//     const data = {
//       teamName,
//       boardName,
//       iccRanking,
//       matchesWonAgainst,
//     };

//     fetch("http://localhost:3000/user/loggedin/teams", {
//       method: "POST",
//       headers: {
//         "Content-Type": "application/json",
//       },
//       body: JSON.stringify(data),
//     })
//       .then((response) => response.json())
//       .then((data) => {
//         console.log("Success:", data);
//         setTeams(data);
//         setSearched(true);
//       })
//       .catch((error) => {
//         console.error("Error:", error);
//       });
//   };

//   return (
//     <div className="Teams">
//       <Row className="justify-content-md-center custom-row mb-4">
//         <Col md="auto">
//           <Form.Control
//             type="text"
//             placeholder="Team name"
//             value={teamName}
//             onChange={(e) => setTeamName(e.target.value)}
//           />
//         </Col>
//         <Col md="auto">
//           <Form.Control
//             as="select"
//             value={boardName}
//             onChange={(e) => setBoardName(e.target.value)}
//           >
//             <option value="">Select Board Name</option>
//             {boardNames.map((name, index) => (
//               <option key={index} value={name}>
//                 {name}
//               </option>
//             ))}
//           </Form.Control>
//         </Col>

//         <Col md="auto">
//           <Form.Control
//             as="select"
//             value={iccRanking}
//             onChange={(e) => setIccRanking(e.target.value)}
//           >
//             <option value="">Select ICC Ranking</option>
//             {iccRankings.map((rank, index) => (
//               <option key={index} value={rank}>
//                 {rank}
//               </option>
//             ))}
//           </Form.Control>
//         </Col>
//         <Col md="auto">
//           <Form.Control
//             as="select"
//             value={matchesWonAgainst}
//             onChange={(e) => setMatchesWonAgainst(e.target.value)}
//           >
//             <option value="">Select Matches Won Against</option>
//             {matchesWonAgainstTeams.map((team, index) => (
//               <option key={index} value={team}>
//                 {team}
//               </option>
//             ))}
//           </Form.Control>
//         </Col>
//         <Col md="auto">
//           <Button
//             className="search-button"
//             variant="primary"
//             onClick={handleSearch}
//           >
//             Search
//           </Button>
//         </Col>
//       </Row>
//       {searched && teams.length === 0 && <p>No teams found.</p>}
//       {teams.length > 0 && (
//         <div className="team-container">
//           {teams.map((team, index) => (
//             <div key={index} className="team-item">
//               <img
//                 src={`http://localhost:3000/country2images/${team}.png`}
//                 alt={team}
//                 className="team-image"
//               />
//               <Link
//                 to={`/user/loggedin/teaminfo/${team}`}
//                 className="team-name"
//               >
//                 {team}
//               </Link>
//             </div>
//           ))}
//         </div>
//       )}
//     </div>
//   );
// };

// export default Teams;

import React, { useState } from "react";
import { Button, Col, Form, Row } from "react-bootstrap";
import { Link } from "react-router-dom";

const Teams = () => {
  const [teamName, setTeamName] = useState("");
  const [boardName, setBoardName] = useState("");
  const [iccRanking, setIccRanking] = useState({ rank: "", type: "" });
  const [matchesWonAgainst, setMatchesWonAgainst] = useState("");
  const [teams, setTeams] = useState([]);
  const [searched, setSearched] = useState(false);
  const [isSearchBarUsed, setIsSearchBarUsed] = useState(false);
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
    setIsSearchBarUsed(true);
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
            style={{
              position: "relative",
              top: "50px",
              left: "-50",
              width: "30",
            }}
            value={teamName}
            onChange={(e) => setTeamName(e.target.value)}
            disabled={isCheckboxUsed}
          />
        </Col>
        <Col md="auto">
          <Form.Label>Board Name</Form.Label>
          <Form.Control
            as="select"
            value={boardName}
            style={{ position: "relative", top: "10px", left: "-50" }}
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
        <Col md="auto">
          <Form.Label>Coach Name</Form.Label>
          <Form.Control
            as="select"
            value={coachName}
            style={{ position: "relative", top: "10px", left: "-50" }}
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
        <Col md="auto">
          <Form.Check
            custom
            type="checkbox"
            id="playing-most-matches"
            label="Playing Most Number of Matches"
            style={{ marginTop: "50px" }}
            checked={playingMostMatches}
            onChange={(e) => setPlayingMostMatches(e.target.checked)}
          />
        </Col>

        <Col md="auto">
          <Form.Label style={{ position: "relative", top: "40px" }}>
            ICC Ranking
          </Form.Label>
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
              style={{ marginTop: "30px" }} // Increase this value
            />
          ))}
        </Col>
      </Row>
      <Button
        variant="primary"
        style={{ position: "relative", top: "-160px", left: "30px" }}
        onClick={handleSearch}
      >
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
                }}
              />
              <Link
                to={`/user/loggedin/teaminfo/${team}`}
                style={{
                  fontSize: "15px",
                  fontFamily: "Arial, sans-serif",
                  display: "block", // This makes the link take up the full width of its parent
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
