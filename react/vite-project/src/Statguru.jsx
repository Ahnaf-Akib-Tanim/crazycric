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
  const handleSubmit = async () => {
    const data = {
      selectedButton,
      selectedTeam,
      selectedOpposition,
      selectedVenue,
      selectedHost,
      selectedResult,
      selectedFormat,
      selectedStadium,
      selectedEndDate,
      selectedStartDate,
      endDate,
      name,
      selectedInvolvingTeam,
      selectedOriginality,
    };

    const response = await fetch(
      "http://localhost:3000/user/loggedin/statguru",
      {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(data),
      }
    );

    if (response.ok) {
      const responseData = await response.json();
      console.log(responseData);
    } else {
      console.error("Server response was not ok.");
    }
  };
  return (
    <div className={styles.statguru}>
      <div className={styles["button-group"]}>
        {["Batting", "Bowling", "All-Round", "Team", "Umpire", "Stadium"].map(
          (button) => (
            <button
              key={button}
              className={[
                "coolBeans",
                selectedButton === button ? styles.selectedButton : "",
              ].join(" ")}
              onClick={() => handleButtonClick(button)}
            >
              {button}
            </button>
          )
        )}
      </div>
      {selectedButton !== "Umpire" && selectedButton !== "Stadium" && (
        <div
          className="dropdowns"
          // style={{ position: "relative",top:"", left: "300px" }}
        >
          <div
            className="menu"
            style={{ position: "relative", top: "-240px", left: "-650px" }}
          >
            <ol>
              <li>
                <a href="#">{selectedTeam || "Team"}</a>
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
            style={{ position: "relative", top: "-570px", left: "-500px" }}
          >
            <ol>
              <li>
                <a href="#">{selectedOpposition || "Opposition"}</a>
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
            style={{ position: "relative", top: "-810px", left: "-650px" }}
          >
            <ol>
              <li>
                <a href="#">{selectedVenue || "Venue"}</a>
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
          <div
            className="menu"
            style={{ position: "relative", top: "-1150px", left: "-495px" }}
          >
            <ol>
              <li>
                <a href="#">{selectedHost || "Host Country"}</a>
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
          <div
            className="menu"
            style={{ position: "relative", top: "-1400px", left: "-495px" }}
          >
            <ol>
              <li>
                <a href="#">{selectedResult || "Match Result"}</a>
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
          <div
            className="menu"
            style={{ position: "relative", top: "-1750px", left: "-655px" }}
          >
            <ol>
              <li>
                <a href="#">{selectedFormat || "Format"}</a>
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

          <div
            className="menu"
            style={{ position: "relative", top: "-2240px", left: "585px" }}
          >
            <ol>
              <li>
                <a href="#">{selectedStadium || "Stadium"}</a>
                <ol className="sub-menu stadium-menu">
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
          <div style={{ position: "relative", top: "-2050px", left: "-575px" }}>
            <label style={{ color: "white" }}>Starting Date:</label>
            <input
              type="date"
              value={startDate}
              onChange={(e) => setSelectedStartDate(e.target.value)}
            />
          </div>
          <div style={{ position: "relative", top: "-2000px", left: "-575px" }}>
            <label style={{ color: "white" }}>Ending Date:</label>
            <input
              type="date"
              value={endDate}
              onChange={(e) => setSelectedEndDate(e.target.value)}
            />
          </div>
          <div
            className="coolBeans"
            style={{
              position: "relative",
              top: "-1970px",
              left: "-510px",
              width: "100px",
            }}
          >
            <button onClick={handleSubmit}>Submit</button>
          </div>
        </div>
      )}
      {selectedButton === "Umpire" || selectedButton === "Stadium" ? (
        <div>
          <div
            className="name-field"
            style={{ position: "relative", top: "-800px" }}
          >
            <label>Name:</label>
            <div
              style={{
                width: 275,
                height: 17,
                left: -580,
                top: 950,
                position: "relative",
              }}
            >
              <input
                type="text"
                onChange={(e) => setName(e.target.value)}
                style={{
                  width: 275,
                  height: 50,
                  left: 0,
                  top: -120,
                  position: "absolute",
                  background: "#F7F8F9",
                  borderRadius: 8,
                  border: "1px #E8ECF4 solid",
                  transition: "all .2s ease-in-out",
                }}
                onMouseEnter={(e) => {
                  e.target.style.boxShadow = "0 0 10px green";
                  e.target.style.transform = "scale(1.05)";
                }}
                onMouseLeave={(e) => {
                  e.target.style.boxShadow = "";
                  e.target.style.transform = "";
                }}
                placeholder="Enter Name"
              />
            </div>
          </div>
          <div className="dropdowns">
            <div
              className="menu"
              style={{ position: "relative", top: "-190px", left: "-500px" }}
            >
              <ol>
                <li>
                  <a href="#">{selectedInvolvingTeam || "Involving Team"}</a>
                  <ol className="sub-menu">
                    {teams.map((team) => (
                      <li
                        key={team}
                        onClick={() => setSelectedInvolvingTeam(team)}
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
              style={{ position: "relative", top: "-540px", left: "-680px" }}
            >
              <ol>
                <li>
                  <a href="#">{selectedOriginality || "Originality"}</a>
                  <ol className="sub-menu">
                    {teams.map((originality) => (
                      <li
                        key={originality}
                        onClick={() => setSelectedOriginality(originality)}
                      >
                        <a href="#">{originality}</a>
                      </li>
                    ))}
                  </ol>
                </li>
              </ol>
            </div>
            <div
              className="menu"
              style={{ position: "relative", top: "-790px", left: "-590px" }}
            >
              <ol>
                <li>
                  <a href="#">{selectedFormat || "Format"}</a>
                  <ol className="sub-menu">
                    {formats.map((format) => (
                      <li
                        key={format}
                        onClick={() => setSelectedFormat(format)}
                      >
                        <a href="#">{format}</a>
                      </li>
                    ))}
                  </ol>
                </li>
              </ol>
            </div>
            <div
              className="coolBeans"
              style={{
                position: "relative",
                top: "-790px",
                left: "-510px",
                width: "100px",
              }}
            >
              <button onClick={handleSubmit}>Submit</button>
            </div>
          </div>
        </div>
      ) : null}
    </div>
  );
};

export default Statguru;
