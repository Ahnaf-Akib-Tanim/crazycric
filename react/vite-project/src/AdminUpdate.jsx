// AdminUpdate.jsx
import axios from "axios";
import React, { useEffect, useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import "./AdminUpdate.css";
function AdminUpdate() {
  const { playerId } = useParams();
  const [playerData, setPlayerData] = useState(null);
  const [inputStyle, setInputStyle] = useState({
    marginRight: "10px",
    marginBottom: "10px",
  });
  const navigate = useNavigate();
  useEffect(() => {
    axios
      .get(`http://localhost:3000/admin/loggedin/update/${playerId}`)
      .then((response) => {
        setPlayerData(response.data);
      })
      .catch((error) => {
        console.error("Error fetching player data:", error);
      });
  }, [playerId]);

  const handleChange = (event) => {
    setPlayerData({
      ...playerData,
      [event.target.name]: event.target.value,
    });
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    axios
      .post(
        `http://localhost:3000/admin/loggedin/update/${playerId}`,
        playerData
      )
      .then((response) => {
        console.log(response.data);
        navigate("/admin/loggedin");
      })
      .catch((error) => {
        console.error("Error updating player data:", error);
      });
  };

  if (!playerData) {
    return <div>Loading...</div>;
  }

  return (
    <div className="bg">
      <form onSubmit={handleSubmit} className="player-info-container">
        <div className="player-image">
          <img
            src={playerData.player_image_path}
            alt={playerData.player_name}
          />
        </div>

        <div className="player-basic-info">
          <h1 className="player-name">{playerData.player_name}</h1>
          <h2 className="player-role-country">
            {playerData.player_role} | {playerData.team_name}
          </h2>
          <h3 className="headers">Date of Birth</h3>
          <p className="infos">{playerData.player_date_of_birth}</p>
          <h3 className="headers">Batting Style</h3>
          <p className="infos">{playerData.player_batting_style}</p>

          <h3 className="headers">Bowling Style</h3>
          <p className="infos">{playerData.player_bowling_style}</p>
          <h3 className="headers">Playing Role</h3>
          <p className="infos">{playerData.player_role}</p>
        </div>
        <div className="player-stats">
          <h2 style={{ fontStyle: "italic", marginBottom: "20px" }}>
            Test Batting Stats
          </h2>
          <label>Matches</label>
          <input
            name="batting_test_no_of_match"
            className="coolBeans"
            value={playerData.batting_test_no_of_match}
            onChange={handleChange}
          />
          <label>Innings</label>
          <input
            name="batting_test_no_of_innings"
            value={playerData.batting_test_no_of_innings}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Runs</label>
          <input
            name="batting_test_runs"
            value={playerData.batting_test_runs}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Sr</label>
          <input
            name="batting_test_sr"
            value={playerData.batting_test_sr}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Avg</label>
          <input
            name="batting_test_avg"
            value={playerData.batting_test_avg}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>100s</label>
          <input
            name="batting_test_100s"
            value={playerData.batting_test_100s}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>50s</label>
          <input
            name="batting_test_50s"
            value={playerData.batting_test_50s}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>4s</label>
          <input
            name="batting_test_4s"
            value={playerData.batting_test_4s}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>6s</label>
          <input
            name="batting_test_6s"
            value={playerData.batting_test_6s}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Hs</label>
          <input
            name="batting_test_hs"
            value={playerData.batting_test_hs}
            className="coolBeans"
            onChange={handleChange}
          />
          <h2 style={{ fontStyle: "italic", marginBottom: "20px" }}>
            ODI Batting Stats
          </h2>
          <label>Matches</label>
          <input
            name="batting_odi_no_of_match"
            value={playerData.batting_odi_no_of_match}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Innings</label>
          <input
            name="batting_odi_no_of_innings"
            value={playerData.batting_odi_no_of_innings}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Runs</label>
          <input
            name="batting_odi_runs"
            value={playerData.batting_odi_runs}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Sr</label>
          <input
            name="batting_odi_sr"
            value={playerData.batting_odi_sr}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Avg</label>
          <input
            name="batting_odi_avg"
            value={playerData.batting_odi_avg}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>100s</label>
          <input
            name="batting_odi_100s"
            value={playerData.batting_odi_100s}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>50s</label>
          <input
            name="batting_odi_50s"
            value={playerData.batting_odi_50s}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>4s</label>
          <input
            name="batting_odi_4s"
            value={playerData.batting_odi_4s}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>6s</label>
          <input
            name="batting_odi_6s"
            value={playerData.batting_odi_6s}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Hs</label>
          <input
            name="batting_odi_hs"
            value={playerData.batting_odi_hs}
            className="coolBeans"
            onChange={handleChange}
          />
          <h2 style={{ fontStyle: "italic", marginBottom: "20px" }}>
            t20 Batting Stats
          </h2>
          <label>Matches</label>
          <input
            name="batting_t20_no_of_match"
            value={playerData.batting_t20_no_of_match}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Innings</label>
          <input
            name="batting_t20_no_of_innings"
            value={playerData.batting_t20_no_of_innings}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Runs</label>
          <input
            name="batting_t20_runs"
            value={playerData.batting_t20_runs}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Sr</label>
          <input
            name="batting_t20_sr"
            value={playerData.batting_t20_sr}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Avg</label>
          <input
            name="batting_t20_avg"
            value={playerData.batting_t20_avg}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>100s</label>
          <input
            name="batting_t20_100s"
            value={playerData.batting_t20_100s}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>50s</label>
          <input
            name="batting_t20_50s"
            value={playerData.batting_t20_50s}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>4s</label>
          <input
            name="batting_t20_4s"
            value={playerData.batting_t20_4s}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>6s</label>
          <input
            name="batting_t20_6s"
            value={playerData.batting_t20_6s}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Hs</label>
          <input
            name="batting_t20_hs"
            value={playerData.batting_t20_hs}
            className="coolBeans"
            onChange={handleChange}
          />
          <h2 style={{ fontStyle: "italic", marginBottom: "20px" }}>
            Test Bowling Stats
          </h2>
          <label>Matches</label>
          <input
            name="bowling_test_no_of_match"
            value={playerData.bowling_test_no_of_match}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Innings</label>
          <input
            name="bowling_test_no_of_innings"
            value={playerData.bowling_test_no_of_innings}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Runs</label>
          <input
            name="bowling_test_runs"
            value={playerData.bowling_test_runs}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Wickets</label>
          <input
            name="bowling_test_wickets"
            value={playerData.bowling_test_wickets}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Avg</label>
          <input
            name="bowling_test_avg"
            value={playerData.bowling_test_avg}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Economy</label>
          <input
            name="bowling_test_economy"
            value={playerData.bowling_test_economy}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>10w</label>
          <input
            name="bowling_test_10w"
            value={playerData.bowling_test_10w}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>5w</label>
          <input
            name="bowling_test_5w"
            value={playerData.bowling_test_5w}
            className="coolBeans"
            onChange={handleChange}
          />
          <h2 style={{ fontStyle: "italic", marginBottom: "20px" }}>
            ODI Bowling Stats
          </h2>
          <label>Matches</label>
          <input
            name="bowling_odi_no_of_match"
            value={playerData.bowling_odi_no_of_match}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Innings</label>
          <input
            name="bowling_odi_no_of_innings"
            value={playerData.bowling_odi_no_of_innings}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Runs</label>
          <input
            name="bowling_odi_runs"
            value={playerData.bowling_odi_runs}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Wickets</label>
          <input
            name="bowling_odi_wickets"
            value={playerData.bowling_odi_wickets}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Avg</label>
          <input
            name="bowling_odi_avg"
            value={playerData.bowling_odi_avg}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Economy</label>
          <input
            name="bowling_odi_economy"
            value={playerData.bowling_odi_economy}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>10w</label>
          <input
            name="bowling_odi_10w"
            value={playerData.bowling_odi_10w}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>5w</label>
          <input
            name="bowling_odi_5w"
            value={playerData.bowling_odi_5w}
            className="coolBeans"
            onChange={handleChange}
          />
          <h2 style={{ fontStyle: "italic", marginBottom: "20px" }}>
            T20 Bowling Stats
          </h2>
          <label>Matches</label>
          <input
            name="bowling_t20_no_of_match"
            value={playerData.bowling_t20_no_of_match}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Innings</label>
          <input
            name="bowling_t20_no_of_innings"
            value={playerData.bowling_t20_no_of_innings}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Runs</label>
          <input
            name="bowling_t20_runs"
            value={playerData.bowling_t20_runs}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Wickets</label>
          <input
            name="bowling_t20_wickets"
            value={playerData.bowling_t20_wickets}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Avg</label>
          <input
            name="bowling_t20_avg"
            value={playerData.bowling_t20_avg}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>Economy</label>
          <input
            name="bowling_t20_economy"
            value={playerData.bowling_t20_economy}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>10w</label>
          <input
            name="bowling_t20_10w"
            value={playerData.bowling_t20_10w}
            className="coolBeans"
            onChange={handleChange}
          />
          <label>5w</label>
          <input
            name="bowling_t20_5w"
            value={playerData.bowling_t20_5w}
            className="coolBeans"
            onChange={handleChange}
          />
        </div>

        <button className="coolBeans" type="submit">
          Update Player
        </button>
      </form>
    </div>
  );
}

export default AdminUpdate;
