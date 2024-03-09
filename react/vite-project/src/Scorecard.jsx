import axios from "axios";
import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import "./Scorecard.css";

const MatchSummary = ({ summary, stadium_name, umpire_names }) => (
  <div style={{ textAlign: "center" }}>
    <img
      src={`http://localhost:3000/seriesimages/${summary.series_id}.png`}
      alt="Series"
      style={{ position: "relative", top: "-20", left: "00px" }}
    />
    <h1 style={{ marginTop: "-4em" }}>
      {summary.team1} vs {summary.team2} {summary.match_format}
    </h1>
    <h2 className="label">Venue: {stadium_name}</h2>
    <h3>Umpired by: {umpire_names}</h3>
    <h4>{summary.toss_won_by} won the toss and batted first</h4>
    <h4>
      {summary.match_won_by} won by {summary.margin_of_win}
    </h4>
    <h4>Man of the match: {summary.man_of_the_match}</h4>
  </div>
);

const Scorecard = ({ scorecard, innings }) => (
  <div style={{ margin: "0 auto", width: "fit-content" }}>
    <h2 className="label">{innings} Innings:</h2>
    <table style={{ margin: "0 auto" }}>
      <thead>
        <tr>
          <th style={{ padding: "0 15px", color: "violet" }}>Player</th>
          <th style={{ padding: "0 15px", color: "violet" }}>Wicket</th>
          <th style={{ padding: "0 15px", color: "violet" }}>By</th>
          <th style={{ padding: "0 15px", color: "violet" }}>Runs</th>
        </tr>
      </thead>
      <tbody>
        {scorecard.player_id.map((player, index) => (
          <tr key={index}>
            <td style={{ padding: "0 15px" }}>{player}</td>
            <td style={{ padding: "0 15px" }}>
              {scorecard.wicket_type[index]}
            </td>
            <td style={{ padding: "0 15px" }}>
              {scorecard.wicket_taken_by[index]}
            </td>
            <td style={{ padding: "0 15px" }}>
              {scorecard.run_with_balls[index]}
            </td>
          </tr>
        ))}
      </tbody>
    </table>
  </div>
);
const BowlingStats = ({ scorecard }) => (
  <div style={{ margin: "0 auto", width: "fit-content" }}>
    <h2 className="label">Bowling Stats:</h2>
    <table style={{ margin: "0 auto" }}>
      <thead>
        <tr>
          <th style={{ padding: "0 15px", color: "violet" }}>Bowler</th>
          <th style={{ padding: "0 15px", color: "violet" }}>Overs</th>
          <th style={{ padding: "0 15px", color: "violet" }}>Runs</th>
          <th style={{ padding: "0 15px", color: "violet" }}>Wickets</th>
          <th style={{ padding: "0 15px", color: "violet" }}>Economy</th>
        </tr>
      </thead>
      <tbody>
        {scorecard.bowlers.map((bowler, index) => (
          <tr key={index}>
            <td style={{ padding: "0 15px" }}>{bowler}</td>
            <td style={{ padding: "0 15px" }}>
              {scorecard.overs_bowled[index]}
            </td>
            <td style={{ padding: "0 15px" }}>{scorecard.runs_given[index]}</td>
            <td style={{ padding: "0 15px" }}>
              {scorecard.taken_wickets[index]}
            </td>
            <td style={{ padding: "0 15px" }}>{scorecard.economy[index]}</td>
          </tr>
        ))}
      </tbody>
    </table>
  </div>
);
const MainComponent = () => {
  const { match_id } = useParams();
  const [scorecard, setScorecard] = useState(null);

  useEffect(() => {
    const fetchScorecard = async () => {
      const response = await axios.get(
        `http://localhost:3000/user/loggedin/scorecard/${match_id}`
      );
      const data = response.data;
      setScorecard({
        match_summary_record: data.matchSummary[0],
        scorecard1_record: data.scorecard1[0],
        scorecard2_record: data.scorecard2[0],
        scorecard3_record: data.scorecard3[0],
        scorecard4_record: data.scorecard4[0],
        stadium_name: data.stadiumName[0].stadium_name,
        umpire_names: data.umpireNames
          .map((umpire) => umpire.umpire_name)
          .join(", "),
      });
    };

    fetchScorecard();
  }, [match_id]);

  if (!scorecard) {
    return <div>Loading...</div>;
  }

  return (
    <div className="container1">
      <div className="container">
        <MatchSummary
          summary={scorecard.match_summary_record}
          stadium_name={scorecard.stadium_name}
          umpire_names={scorecard.umpire_names}
        />
        <Scorecard scorecard={scorecard.scorecard1_record} innings="1ST" />
        <BowlingStats scorecard={scorecard.scorecard3_record} />
        <Scorecard scorecard={scorecard.scorecard2_record} innings="2ND" />
        <BowlingStats scorecard={scorecard.scorecard4_record} />
      </div>
    </div>
  );
};

export default MainComponent;
