import React, { useEffect, useRef, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import "./Homepage.css";
const Homepage = () => {
  const navigate = useNavigate();
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
      .then((data) => {
        setData(data);
        console.log(data.recentNews);
        console.log(data.userid);
        // console.log(data);
      })
      .catch((error) => console.error(error));
  }, []);

  return (
    <div className="homepage homepage-specific-body">
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
            <Link to="/user/loggedin/statguru">Statguru</Link>
          </button>
          <button className="button">
            <Link
              to={`/user/loggedin/Dream11update/${
                data.user ? data.user[0].userid : ""
              }`}
            >
              Dream11 Update
            </Link>
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
        <Link
          to="/user/loggedin/profile"
          style={{ position: "relative", top: "-20px", left: "50px" }}
        >
          {data.user && data.user[0].username}
        </Link>
      </div>
      <div className="middle-section1">
        <h2 style={{ position: "relative", left: "420px", top: "20px" }}>
          Trending Players
        </h2>{" "}
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
      <div className="middle-section2">
        <h2
          style={{
            position: "relative",
            top: "220px",
            left: "-730px",
            color: "white",
            marginTop: "40px",
          }}
        >
          Recent Matches
        </h2>
        <div className="match-container">
          {data.matches &&
            data.matches.map((match, index) => (
              <div key={match.match_id} className="match-item">
                <img
                  className="match-image"
                  src={`http://localhost:3000/seriesimages/${match.series_id}.png`}
                  alt={`Match ${match.match_id}`}
                />
                <div className="match-description">
                  <p>{`${match.team1} vs ${match.team2}, ${
                    match.match_format
                  } series, ${new Date(match.match_date).getFullYear()}`}</p>
                  <p>{`${new Date(match.match_date).toLocaleDateString()} at ${
                    match.stadium_name
                  }`}</p>
                  <p>{`${match.match_won_by} Won by ${match.margin_of_win}`}</p>
                </div>
                <Link to={`/user/loggedin/scorecard/${match.match_id}`}>
                  <button className="scorecard-button">Scorecard</button>
                </Link>
              </div>
            ))}
        </div>
      </div>
      {/*from here*/}
      <div className="upcoming-matches-section">
        <h2
          style={{
            position: "relative",
            top: "150px",
            left: "-2900px",
            color: "white",
            marginTop: "40px",
          }}
        >
          Upcoming Matches
        </h2>
        <div className="upcoming-matches-container">
          {data.upcomingMatches &&
            data.upcomingMatches.map((match, index) => (
              <div key={match.match_id} className="upcoming-match-item">
                <img
                  className="upcoming-match-image"
                  src={`http://localhost:3000/series_images/${match.series_id}.png`}
                  alt={`Match ${match.match_id}`}
                />
                <div className="upcoming-match-description">
                  <p>{`${new Date(match.match_date).toLocaleDateString()} at ${
                    match.stadium_name
                  }`}</p>
                </div>
              </div>
            ))}
        </div>
      </div>
      <div className="news-section">
        <h2
          style={{
            position: "relative",
            top: "530px",
            left: "-5050px",
            color: "white",
            marginTop: "40px",
          }}
        >
          Latest Innings
        </h2>
        <div className="news-container">
          {data.recentNews &&
            data.recentNews.map((news, index) => (
              <div key={news.news_id} className="news-item">
                <img
                  className="news-image"
                  src={`http://localhost:3000/newsimage/${news.news_id}.jpg`}
                  alt={`News ${news.news_id}`}
                />
                <div
                  className="news-description"
                  onClick={() =>
                    navigate(`/user/loggedin/news/${news.news_id}`)
                  }
                >
                  <p>{`${new Date(news.news_date).toLocaleDateString()}`}</p>
                  <h3 style={{ color: "white" }}>{news.title}</h3>
                </div>
              </div>
            ))}
        </div>
      </div>

      <div className="right-section">
        <table>
          <thead>
            <tr>
              <th>Dream Team</th>
              <th>Score</th>
              <th>Rank</th>
            </tr>
          </thead>
          <tbody style={{ color: "white" }}>
            {data.dream11 &&
              data.dream11.map((team, index) => (
                <tr key={index}>
                  <td>
                    <img
                      className="user-image"
                      src={team.image}
                      alt={team.team_name}
                    />
                    <Link
                      to={`/user/loggedin/Dream11TeamInfo/${team.team_name}`}
                      style={{ color: "white" }}
                    >
                      {team.team_name}
                    </Link>
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
{
  /* <div className="middle-section3">
{data.userdream11 && data.userdream11[0] && (
  <>
    <h2>{data.userdream11[0].team_name}</h2>
    <div className="coach-captain-row">
      <div className="coach">
        <img
          className="coach-image"
          src={`http://localhost:3000/coachimages/${data.userdream11[0].coach_name}.jpeg`}
          alt={data.userdream11[0].coach_name}
        />
        <p>{data.userdream11[0].coach_name}</p>
      </div>
      <div className="captain">
        <img
          className="captain-image"
          src={`http://localhost:3000/images/${data.userdream11[0].captain}.jpeg`}
          alt={data.userdream11[0].captain}
        />
        <p>{data.userdream11[0].captain} (C)</p>
      </div>
    </div>
    <div className="player-row">
      {data.userdream11[0].players &&
        data.userdream11[0].players.slice(0, 5).map((player, index) => (
          <div key={index} className="player">
            <img
              className="player-image"
              src={`http://localhost:3000/images/${player}.jpeg`}
              alt={player}
            />
            <p>{player}</p>
          </div>
        ))}
    </div>
    <div className="player-row">
      {data.userdream11[0].players &&
        data.userdream11[0].players
          .slice(5, 10)
          .map((player, index) => (
            <div key={index} className="player">
              <img
                className="player-image"
                src={`http://localhost:3000/images/${player}.jpeg`}
                alt={player}
              />
              <p>{player}</p>
            </div>
          ))}
    </div>
  </>
)}
</div> */
}
