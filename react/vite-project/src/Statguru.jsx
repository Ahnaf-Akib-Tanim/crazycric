// eslint-disable-next-line no-unused-vars
import React, { useEffect, useState } from "react";
import "./buttonTwo.css";
import "./dropdown.css";
import styles from "./statguru.module.css";
const Statguru = () => {
  const [selectedButton, setSelectedButton] = useState(null);
  const [selectedTeam, setSelectedTeam] = useState(null);
  const [selectedOpposition, setSelectedOpposition] = useState(null);
  const [selectedVenue, setSelectedVenue] = useState(null);
  const [selectedHost, setSelectedHost] = useState(null);
  const [selectedResult, setSelectedResult] = useState(null);
  const [selectedFormat, setSelectedFormat] = useState(null);
  const [selectedStadium, setSelectedStadium] = useState(null);
  const [selectedStartDate, setSelectedStartDate] = useState(null);
  const [selectedEndDate, setSelectedEndDate] = useState(null);
  const [stadiums, setStadiums] = useState([]);
  const [startDate, setStartDate] = useState(null);
  const [endDate, setEndDate] = useState(null);
  const [name, setName] = useState(null);
  const [selectedInvolvingTeam, setSelectedInvolvingTeam] = useState(null);
  const [selectedOriginality, setSelectedOriginality] = useState(null);
  useEffect(() => {
    fetch("http://localhost:3000/user/loggedin/statguru") // Replace with your API endpoint
      .then((response) => response.json())
      .then((data) => setStadiums(data));
    console.log(stadiums);
  }, []);
  const teams = [
    "Bangladesh",
    "India",
    "Pakistan",
    "Sri Lanka",
    "New Zealand",
    "South Africa",
    "West Indies",
    "Afghanistan",
    "England",
    "Australia",
  ];
  const venues = ["Home", "Away", "Neutral"];
  const results = ["Won", "Lost", "Drawn"];
  const formats = ["Test", "ODI", "T20"];
  const handleButtonClick = (button) => {
    if (selectedButton === button) {
      setSelectedButton(null);
    } else {
      setSelectedButton(button);
    }
  };

  return (
    <div className={styles.statguru}>
      <div className={styles["button-group"]}>
        {["Batting", "Bowling", "All-Round", "Team", "Umpire", "Stadium"].map(
          (button) => (
            <button
              key={button}
              className={`coolBeans ${
                selectedButton === button ? "selected" : ""
              }`}
              onClick={() => handleButtonClick(button)}
            >
              {button}
            </button>
          )
        )}
      </div>
      {selectedButton !== "Umpire" && selectedButton !== "Stadium" && (
        <div className="dropdowns">
          <div
            className="menu"
            style={{ position: "relative", top: "900px", left: "-950px" }}
          >
            <ol>
              <li>
                <a href="#">Team</a>
                <ol className="sub-menu">
                  {teams.map((team) => (
                    <li key={team} onClick={() => setSelectedTeam(team)}>
                      <a href="#">{team}</a>
                    </li>
                  ))}
                </ol>
              </li>
            </ol>
          </div>
          <div
            className="menu"
            style={{ position: "relative", top: "550px", left: "-750px" }}
          >
            <ol>
              <li>
                <a href="#">Opposition</a>
                <ol className="sub-menu">
                  {teams
                    .filter((team) => team !== selectedTeam)
                    .map((team) => (
                      <li
                        key={team}
                        onClick={() => setSelectedOpposition(team)}
                      >
                        <a href="#">{team}</a>
                      </li>
                    ))}
                </ol>
              </li>
            </ol>
          </div>
          <div
            className="menu"
            style={{ position: "relative", top: "900px", left: "-950px" }}
          >
            <ol>
              <li>
                <a href="#">Venue</a>
                <ol className="sub-menu">
                  {venues.map((venue) => (
                    <li key={venue} onClick={() => setSelectedVenue(venue)}>
                      <a href="#">{venue}</a>
                    </li>
                  ))}
                </ol>
              </li>
            </ol>
          </div>
          <div className="menu">
            <ol>
              <li>
                <a href="#">Host Country</a>
                <ol className="sub-menu">
                  {teams.map((team) => (
                    <li key={team} onClick={() => setSelectedHost(team)}>
                      <a href="#">{team}</a>
                    </li>
                  ))}
                </ol>
              </li>
            </ol>
          </div>
          <div className="menu">
            <ol>
              <li>
                <a href="#">Match Result</a>
                <ol className="sub-menu">
                  {results.map((result) => (
                    <li key={result} onClick={() => setSelectedResult(result)}>
                      <a href="#">{result}</a>
                    </li>
                  ))}
                </ol>
              </li>
            </ol>
          </div>
          <div className="menu">
            <ol>
              <li>
                <a href="#">Format</a>
                <ol className="sub-menu">
                  {formats.map((format) => (
                    <li key={format} onClick={() => setSelectedFormat(format)}>
                      <a href="#">{format}</a>
                    </li>
                  ))}
                </ol>
              </li>
            </ol>
          </div>
          <div className="menu">
            <ol>
              <li>
                <a href="#">Stadium</a>
                <ol className="sub-menu">
                  {stadiums.map((stadium) => (
                    <li
                      key={stadium}
                      onClick={() => setSelectedStadium(stadium)}
                    >
                      <a href="#">{stadium}</a>
                    </li>
                  ))}
                </ol>
              </li>
            </ol>
          </div>
          <div>
            <label>Starting Date:</label>
            <input type="date" onChange={(e) => setStartDate(e.target.value)} />
          </div>
          <div>
            <label>Ending Date:</label>
            <input type="date" onChange={(e) => setEndDate(e.target.value)} />
          </div>
        </div>
      )}
      {selectedButton === "Umpire" || selectedButton === "Stadium" ? (
        <div className="name-field">
          <label>Name:</label>
          <input type="text" onChange={(e) => setName(e.target.value)} />
          <div className="dropdown">
            <button className="dropbtn">Involving Team</button>
            <div className="dropdown-content">
              {teams.map((team) => (
                <p key={team} onClick={() => setSelectedInvolvingTeam(team)}>
                  {team}
                </p>
              ))}
            </div>
          </div>
          <div className="dropdown">
            <button className="dropbtn">Originality</button>
            <div className="dropdown-content">
              {teams.map((team) => (
                <p key={team} onClick={() => setSelectedOriginality(team)}>
                  {team}
                </p>
              ))}
            </div>
          </div>
          <div className="dropdown">
            <button className="dropbtn">Format</button>
            <div className="dropdown-content">
              {formats.map((format) => (
                <p key={format} onClick={() => setSelectedFormat(format)}>
                  {format}
                </p>
              ))}
            </div>
          </div>
        </div>
      ) : null}
    </div>
  );
};

export default Statguru;
