// PlayerInfo.jsx

import axios from "axios";
import React, { useEffect, useState } from "react";
import Table from "react-bootstrap/Table";
import { useParams } from "react-router-dom";
import "./PlayerInfo.css";

function PlayerInfo() {
  const { player_id } = useParams();
  const [playerData, setPlayerData] = useState(null);

  useEffect(() => {
    axios
      .get(`http://localhost:3000/user/loggedin/playerinfo/${player_id}`)
      .then((response) => {
        setPlayerData(response.data);
        console.log(response.data);
      })
      .catch((error) => {
        console.error("Error fetching player data:", error);
      });
  }, [player_id]);

  if (!playerData) {
    return <div>Loading...</div>;
  }

  return (
    <div className="player-info-container1">
      <div className="player-info-container">
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
          <h2 style={{ fontStyle: "italic" }}>Test Batting Stats</h2>
          <Table bordered responsive className="table-bordered">
            <thead>
              <tr>
                <th>Matches</th>
                <th>Innings</th>
                <th>Runs</th>
                <th>Strike Rate</th>
                <th>Average</th>
                <th>100s</th>
                <th>50s</th>
                <th>4s</th>
                <th>6s</th>
                <th>High Score</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>{playerData.batting_test_no_of_match}</td>
                <td>{playerData.batting_test_no_of_innings}</td>
                <td>{playerData.batting_test_runs}</td>
                <td>{playerData.batting_test_sr}</td>
                <td>{playerData.batting_test_avg}</td>
                <td>{playerData.batting_test_100s}</td>
                <td>{playerData.batting_test_50s}</td>
                <td>{playerData.batting_test_4s}</td>
                <td>{playerData.batting_test_6s}</td>
                <td>{playerData.batting_test_hs}</td>
              </tr>
            </tbody>
          </Table>

          <h2 style={{ fontStyle: "italic" }}>ODI Batting Stats</h2>
          <Table bordered responsive>
            {/* Add ODI stats similar to the Test stats table */}
            <thead>
              <tr>
                <th>Matches</th>
                <th>Innings</th>
                <th>Runs</th>
                <th>Strike Rate</th>
                <th>Average</th>
                <th>100s</th>
                <th>50s</th>
                <th>4s</th>
                <th>6s</th>
                <th>High Score</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>{playerData.batting_odi_no_of_match}</td>
                <td>{playerData.batting_odi_no_of_innings}</td>
                <td>{playerData.batting_odi_runs}</td>
                <td>{playerData.batting_odi_sr}</td>
                <td>{playerData.batting_odi_avg}</td>
                <td>{playerData.batting_odi_100s}</td>
                <td>{playerData.batting_odi_50s}</td>
                <td>{playerData.batting_odi_4s}</td>
                <td>{playerData.batting_odi_6s}</td>
                <td>{playerData.batting_odi_hs}</td>
              </tr>
            </tbody>
          </Table>

          <h2 style={{ fontStyle: "italic" }}>T20 Batting Stats</h2>
          <Table bordered responsive>
            {/* Add T20 stats similar to the Test stats table */}
            <thead>
              <tr>
                <th>Matches</th>
                <th>Innings</th>
                <th>Runs</th>
                <th>Strike Rate</th>
                <th>Average</th>
                <th>100s</th>
                <th>50s</th>
                <th>4s</th>
                <th>6s</th>
                <th>High Score</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>{playerData.batting_t20_no_of_match}</td>
                <td>{playerData.batting_t20_no_of_innings}</td>
                <td>{playerData.batting_t20_runs}</td>
                <td>{playerData.batting_t20_sr}</td>
                <td>{playerData.batting_t20_avg}</td>
                <td>{playerData.batting_t20_100s}</td>
                <td>{playerData.batting_t20_50s}</td>
                <td>{playerData.batting_t20_4s}</td>
                <td>{playerData.batting_t20_6s}</td>
                <td>{playerData.batting_t20_hs}</td>
              </tr>
            </tbody>
          </Table>

          <h2 style={{ fontStyle: "italic" }}>Test Bowling Stats</h2>
          <Table bordered responsive>
            <thead>
              <tr>
                <th>Matches</th>
                <th>Innings</th>
                <th>Runs</th>
                <th>Wickets</th>
                <th>Average</th>
                <th>Economy</th>
                <th>5W</th>
                <th>10W</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>{playerData.bowling_test_no_of_match}</td>
                <td>{playerData.bowling_test_no_of_innings}</td>
                <td>{playerData.bowling_test_runs}</td>
                <td>{playerData.bowling_test_wickets}</td>
                <td>{playerData.bowling_test_avg}</td>
                <td>{playerData.bowling_test_economy}</td>
                <td>{playerData.bowling_test_5w}</td>
                <td>{playerData.bowling_test_10w}</td>
              </tr>
            </tbody>
          </Table>
          <h2 style={{ fontStyle: "italic" }}>ODI Bowling Stats</h2>
          <Table bordered responsive>
            {/* Add ODI stats similar to the Test stats table */}
            <thead>
              <tr>
                <th>Matches</th>
                <th>Innings</th>
                <th>Runs</th>
                <th>Wickets</th>
                <th>Average</th>
                <th>Economy</th>
                <th>5W</th>
                <th>10W</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>{playerData.bowling_odi_no_of_match}</td>
                <td>{playerData.bowling_odi_no_of_innings}</td>
                <td>{playerData.bowling_odi_runs}</td>
                <td>{playerData.bowling_odi_wickets}</td>
                <td>{playerData.bowling_odi_avg}</td>
                <td>{playerData.bowling_odi_economy}</td>
                <td>{playerData.bowling_odi_5w}</td>
                <td>{playerData.bowling_odi_10w}</td>
              </tr>
            </tbody>
          </Table>
          <h2 style={{ fontStyle: "italic" }}>T20 Bowling Stats</h2>
          <Table bordered responsive>
            {/* Add T20 stats similar to the Test stats table */}
            <thead>
              <tr>
                <th>Matches</th>
                <th>Innings</th>
                <th>Runs</th>
                <th>Wickets</th>
                <th>Average</th>
                <th>Economy</th>
                <th>5W</th>
                <th>10W</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>{playerData.bowling_t20_no_of_match}</td>
                <td>{playerData.bowling_t20_no_of_innings}</td>
                <td>{playerData.bowling_t20_runs}</td>
                <td>{playerData.bowling_t20_wickets}</td>
                <td>{playerData.bowling_t20_avg}</td>
                <td>{playerData.bowling_t20_economy}</td>
                <td>{playerData.bowling_t20_5w}</td>
                <td>{playerData.bowling_t20_10w}</td>
              </tr>
            </tbody>
          </Table>
        </div>
      </div>
    </div>
  );
}

export default PlayerInfo;
