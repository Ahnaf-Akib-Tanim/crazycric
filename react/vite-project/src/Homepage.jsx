import React, { useEffect, useRef, useState } from "react";
import { Link } from "react-router-dom";
import "./Homepage.css";

const Homepage = () => {
  const [data, setData] = useState({});
  const playerBoxRef = useRef();
  const scrollRight = () => {
    if (playerBoxRef.current) {
      playerBoxRef.current.scrollLeft += 200;
    }
  };
  useEffect(() => {
    fetch("http://localhost:3000/user/loggedin")
      .then((response) => response.json())
      .then((data) => setData(data))
      .catch((error) => console.error(error));
  }, []);

  return (
    <div className="homepage">
      <div className="left-section">
        <img className="do" src="http://localhost:3000/logo" alt="Icon" />
        <div className="button-group">
          <button className="button">
            <Link to="/user/loggedin/players">Players</Link>
          </button>
          <button className="button">
            <Link to="/user/loggedin/teams">Teams</Link>
          </button>
          <button className="button">
            <Link to="/user/loggedin/series">Series</Link>
          </button>
          <button className="button">
            <Link to="/user/loggedin/others">Others</Link>
          </button>
          <button className="button">
            <Link to="/user/loggedin/dream11">Form Your Dream11</Link>
          </button>
        </div>
        <img
          src={data.user && data.user[0].image}
          alt="Profile"
          className="doit"
        />
        <Link to="/user/loggedin/profile">
          {data.user && data.user[0].username}
        </Link>
      </div>
      {/*from here*/}

      <div className="middle-section">
        <h2 style={{ position: "relative", left: "40px" }}>Trending Players</h2>{" "}
        {/* Add "px" to the left property */}
        <div className="player-container">
          <div className="player-box" ref={playerBoxRef}>
            {data.players &&
              data.players.map((player, index) => (
                <Link
                  key={index}
                  to={`/user/loggedin/playerinfo/${player.player_id}`}
                >
                  <div className="player-item">
                    <img
                      className="player-image"
                      src={player.player_image_path}
                      alt={player.player_name}
                    />
                    <p>{player.player_name}</p>
                  </div>
                </Link>
              ))}
          </div>
        </div>
      </div>

      {/*from here*/}
      <div className="right-section">
        <table>
          <thead>
            <tr>
              <th>Dream Team</th>
              <th>Score</th>
              <th>Rank</th>
            </tr>
          </thead>
          <tbody>
            {data.dream11 &&
              data.dream11.map((team, index) => (
                <tr key={index}>
                  <td>
                    <img
                      className="user-image"
                      src={team.image}
                      alt={team.team_name}
                    />
                    {team.team_name}
                  </td>
                  <td>{team.score}</td>
                  <td>{team.ranking}</td>
                </tr>
              ))}
          </tbody>
        </table>
      </div>
    </div>
  );
};
export default Homepage;
