import axios from "axios";
import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
const Scorecard = () => {
  const { matchId } = useParams();
  const [scorecard, setScorecard] = useState(null);

  useEffect(() => {
    const fetchScorecard = async () => {
      const response = await axios.get(
        `http://localhost:3000/user/loggedin/scorecard/${matchId}`
      );
      console.log(response.data);
      setScorecard(response.data);
    };

    fetchScorecard();
  }, [matchId]);

  if (!scorecard) {
    return <div>Loading...</div>;
  }

  const renderScorecard = (scorecard, innings) => (
    <div>
      <h2>{innings} Innings:</h2>
      <table>
        <thead>
          <tr>
            <th>Player</th>
            <th>Run with Balls</th>
            <th>Wicket Type</th>
            <th>Wicket Taken By</th>
          </tr>
        </thead>
        <tbody>
          {scorecard.player_id.map((player, index) => (
            <tr key={index}>
              <td>{player}</td>
              <td>{scorecard.run_with_balls[index]}</td>
              <td>{scorecard.wicket_type[index]}</td>
              <td>{scorecard.wicket_taken_by[index]}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );

  const renderBowlingStats = (scorecard, innings) => (
    <div>
      <h2>{innings} Bowling Stats:</h2>
      <table>
        <thead>
          <tr>
            <th>Bowler</th>
            <th>Overs Bowled</th>
            <th>Runs Given</th>
            <th>Wickets Taken</th>
            <th>Economy</th>
          </tr>
        </thead>
        <tbody>
          {scorecard.bowlers.map((bowler, index) => (
            <tr key={index}>
              <td>{bowler}</td>
              <td>{scorecard.overs_bowled[index]}</td>
              <td>{scorecard.runs_given[index]}</td>
              <td>{scorecard.taken_wickets[index]}</td>
              <td>{scorecard.economy[index]}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );

  return (
    <div>
      {scorecard.match_summary_record && (
        <>
          <img
            src={`http://localhost:3000/seriesimages/${scorecard.match_summary_record.series_id}.png`}
            alt="Series"
          />
          <h1>
            {scorecard.match_summary_record.team1} vs{" "}
            {scorecard.match_summary_record.team2}{" "}
            {scorecard.match_summary_record.match_format}
          </h1>
          <h2>Venue: {scorecard.stadium_name}</h2>
          <h3>Umpired by: {scorecard.umpire_names}</h3>
          <h4>{scorecard.match_summary_record.toss_won_by} and batted first</h4>
          <h4>
            {scorecard.match_summary_record.match_won_by} won by{" "}
            {scorecard.match_summary_record.margin_of_win}
          </h4>
          <h4>
            Man of the match: {scorecard.match_summary_record.man_of_the_match}
          </h4>
        </>
      )}

      {renderScorecard(scorecard.scorecard1_record, "1ST")}
      {renderBowlingStats(scorecard.scorecard3_record, "1ST")}
      {renderScorecard(scorecard.scorecard2_record, "2ND")}
      {renderBowlingStats(scorecard.scorecard4_record, "2ND")}
    </div>
  );
};

export default Scorecard;
