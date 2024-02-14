import React, { useEffect, useState } from "react";
import { Link, useParams } from "react-router-dom";
import "./teaminfo.css";

const StadiumInfo = () => {
  const [stadiumData, setStadiumData] = useState(null);
  const [matchData, setMatchData] = useState(null);
  const { stadium_id } = useParams();

  useEffect(() => {
    const fetchStadiumData = async () => {
      const response = await fetch(
        `http://localhost:3000/user/loggedin/stadium/${stadium_id}`
      );
      const data = await response.json();
      setStadiumData(data.stadium[0]);
      setMatchData(data.matches);
    };

    fetchStadiumData();
  }, [stadium_id]);

  if (!stadiumData || !matchData) {
    return <div>Loading...</div>;
  }

  const formatKey = (key) => {
    return key
      .replace(/_/g, " ")
      .replace(/(^\w|\s\w)/g, (m) => m.toUpperCase());
  };

  return (
    <div className="stadium-info-container">
      <div className="stadium-image-container">
        <div className="stadium-name-container">
          <img
            src={`http://localhost:3000/stadiumimages/${stadium_id}.jpeg`}
            alt={"nothing"}
          />
          <h1>
            <strong>{stadiumData.stadium_name}</strong>
          </h1>
        </div>
      </div>
      <div className="table-container">
        <table>
          <tbody>
            {Object.entries(stadiumData).map(([key, value]) => {
              if (
                key === "stadium_name" ||
                key === "image_path" ||
                key === "stadium_id"
              )
                return null;
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
      <h2>Recent Matches</h2>
      <div className="table-container">
        <table>
          <tbody>
            {matchData.map(
              ({ team1_name, team2_name, match_date_info, match_id_info }) => (
                <tr key={match_id_info}>
                  <td>{`${team1_name} vs ${team2_name} ${new Date(
                    match_date_info
                  ).toLocaleDateString()}`}</td>
                  <td>
                    <Link to={`/user/loggedin/scorecard/${match_id_info}`}>
                      Scorecard
                    </Link>
                  </td>
                </tr>
              )
            )}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default StadiumInfo;
