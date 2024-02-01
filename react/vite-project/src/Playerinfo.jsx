// eslint-disable-next-line no-unused-vars
import axios from "axios";
// eslint-disable-next-line no-unused-vars
import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";

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
    <div style={{ backgroundColor: "#AFABE3" }}>
      <h1>{playerData.player_name}</h1>
      <p>{playerData.player_role}</p>
      <p>{playerData.player_date_of_birth}</p>
      <p>{playerData.player_batting_style}</p>
      <p>{playerData.player_bowling_style}</p>
      <p>{playerData.team_name}</p>
      <img src={playerData.player_image_path} alt={playerData.player_name} />

      <h2>Test Stats</h2>
      <table>
        <tr>
          <td>Matches</td>
          <td>{playerData.batting_test_no_of_match}</td>
        </tr>
        <tr>
          <td>Innings</td>
          <td>{playerData.batting_test_no_of_innings}</td>
        </tr>
        <tr>
          <td>Runs</td>
          <td>{playerData.batting_test_runs}</td>
        </tr>
        <tr>
          <td>Strike Rate</td>
          <td>{playerData.batting_test_sr}</td>
        </tr>
        <tr>
          <td>Average</td>
          <td>{playerData.batting_test_avg}</td>
        </tr>
        <tr>
          <td>100s</td>
          <td>{playerData.batting_test_100s}</td>
        </tr>
        <tr>
          <td>50s</td>
          <td>{playerData.batting_test_50s}</td>
        </tr>
        <tr>
          <td>4s</td>
          <td>{playerData.batting_test_4s}</td>
        </tr>
        <tr>
          <td>6s</td>
          <td>{playerData.batting_test_6s}</td>
        </tr>
        <tr>
          <td>High Score</td>
          <td>{playerData.batting_test_hs}</td>
        </tr>
      </table>

      <h2>ODI Stats</h2>
      <table>
        <tr>
          <td>Matches</td>
          <td>{playerData.batting_odi_no_of_match}</td>
        </tr>
        <tr>
          <td>Innings</td>
          <td>{playerData.batting_odi_no_of_innings}</td>
        </tr>
        <tr>
          <td>Runs</td>
          <td>{playerData.batting_odi_runs}</td>
        </tr>
        <tr>
          <td>Strike Rate</td>
          <td>{playerData.batting_odi_sr}</td>
        </tr>
        <tr>
          <td>Average</td>
          <td>{playerData.batting_odi_avg}</td>
        </tr>
        <tr>
          <td>100s</td>
          <td>{playerData.batting_odi_100s}</td>
        </tr>
        <tr>
          <td>50s</td>
          <td>{playerData.batting_odi_50s}</td>
        </tr>
        <tr>
          <td>4s</td>
          <td>{playerData.batting_odi_4s}</td>
        </tr>
        <tr>
          <td>6s</td>
          <td>{playerData.batting_odi_6s}</td>
        </tr>
        <tr>
          <td>High Score</td>
          <td>{playerData.batting_odi_hs}</td>
        </tr>
      </table>
      <h2>T20 Stats</h2>
      <table>
        <tr>
          <td>Matches</td>
          <td>{playerData.batting_t20_no_of_match}</td>
        </tr>
        <tr>
          <td>Innings</td>
          <td>{playerData.batting_t20_no_of_innings}</td>
        </tr>
        <tr>
          <td>Runs</td>
          <td>{playerData.batting_t20_runs}</td>
        </tr>
        <tr>
          <td>Strike Rate</td>
          <td>{playerData.batting_t20_sr}</td>
        </tr>
        <tr>
          <td>Average</td>
          <td>{playerData.batting_t20_avg}</td>
        </tr>
        <tr>
          <td>100s</td>
          <td>{playerData.batting_t20_100s}</td>
        </tr>
        <tr>
          <td>50s</td>
          <td>{playerData.batting_t20_50s}</td>
        </tr>
        <tr>
          <td>4s</td>
          <td>{playerData.batting_t20_4s}</td>
        </tr>
        <tr>
          <td>6s</td>
          <td>{playerData.batting_t20_6s}</td>
        </tr>
        <tr>
          <td>High Score</td>
          <td>{playerData.batting_t20_hs}</td>
        </tr>
      </table>
    </div>
  );
}

export default PlayerInfo;
