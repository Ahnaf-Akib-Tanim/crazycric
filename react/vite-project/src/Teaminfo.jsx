import React, { useEffect, useState } from "react";
import { Link, useParams } from "react-router-dom";
import "./Teaminfo.css";
const Teaminfo = () => {
  const [teamdata, setTeamInfo] = useState(null);
  const { team_name } = useParams();

  useEffect(() => {
    const fetchteamdata = async () => {
      const response = await fetch(
        `http://localhost:3000/user/loggedin/teaminfo/${team_name}`
      );
      const data = await response.json();
      setTeamInfo(data);
      console.log(data);
    };

    fetchteamdata();
  }, [team_name]);

  if (!teamdata) {
    return <div>Loading...</div>;
  }
  const formatKey = (key) => {
    return key
      .replace(/_/g, " ")
      .replace(/(^\w|\s\w)/g, (m) => m.toUpperCase());
  };

  return (
    <div className="team-info-container">
      <div className="team-name-container">
        <h1>
          <strong>{teamdata.team_name}</strong>
        </h1>
        <img
          src={`http://localhost:3000/country2/${teamdata.team_name}.png`}
          alt={teamdata.team_name}
        />
      </div>
      <div className="table-container">
        <table>
          <tbody>
            <tr>
              <td>Cricket Board</td>
              <td>
                <Link to={`/user/loggedin/board/${teamdata.board.board_name}`}>
                  <div className="card">
                    <img
                      src={`http://localhost:3000/cricketboardimages/${teamdata.board.board_name}.png`}
                      alt={teamdata.board.board_name}
                    />
                    <p>{teamdata.board.board_name}</p>
                  </div>
                </Link>
              </td>
            </tr>
            <tr>
              <td>Coach</td>
              <td>
                <Link to={`/user/loggedin/coach/${teamdata.coach.coach_name}`}>
                  <div className="card">
                    <img
                      src={`http://localhost:3000/coachimages/${teamdata.coach.coach_name}.jpeg`}
                      alt={teamdata.coach.coach_name}
                    />
                    <p>{teamdata.coach.coach_name}</p>
                  </div>
                </Link>
              </td>
            </tr>
            <tr>
              <td>Home Ground</td>
              <td>
                <Link
                  to={`/user/loggedin/stadium/${teamdata.homeGround.stadium_id}`}
                >
                  {teamdata.homeGround ? (
                    <div className="card">
                      <img
                        src={`http://localhost:3000/stasdiumimages/${teamdata.homeGround.stadium_id}.jpeg`}
                        alt={teamdata.homeGround.ground_name}
                      />
                      <p>{teamdata.homeGround.stadium_name}</p>
                    </div>
                  ) : (
                    <p>Loading...</p>
                  )}
                </Link>
              </td>
            </tr>
            {/* Add the player data */}
            {Object.entries(teamdata.players).map(([key, player]) => (
              <tr key={key}>
                <td>{formatKey(key)}</td>
                <td>
                  <Link to={`/user/loggedin/playerinfo/${player.player_id}`}>
                    <div className="card">
                      <img
                        src={`http://localhost:3000/images/${player.player_name}.jpeg`}
                        alt={player.player_name}
                      />
                      <p>{player.player_name}</p>
                    </div>
                  </Link>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
      <div className="table-container">
        <table>
          <tbody>
            {Object.entries(teamdata).map(([key, value]) => {
              // Skip keys that are not in the list
              if (
                ![
                  "most_matches_played_against",
                  "most_matches_won_against",
                  "total_odi_matches_played",
                  "total_odi_matches_won",
                  "total_t20_matches_played",
                  "total_t20_matches_won",
                  "total_test_matches_played",
                  "total_test_matches_won",
                  "icc_t20_ranking",
                  "icc_test_ranking",
                  "icc_odi_ranking",
                ].includes(key)
              ) {
                return null;
              }

              return (
                <tr key={key}>
                  <td>{formatKey(key)}</td>
                  <td>{value}</td>
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default Teaminfo;
