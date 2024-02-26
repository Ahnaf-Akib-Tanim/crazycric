import React, { useEffect, useState } from "react";
import "./Dream11Page.css"; // Import your CSS file for styling

const Dream11Page = () => {
  const [dream11Data, setDream11Data] = useState([]);

  useEffect(() => {
    const fetchDream11Data = async () => {
      try {
        const response = await fetch("YOUR_BACKEND_API_URL"); // Replace with your actual API endpoint
        if (!response.ok) {
          throw new Error("Failed to fetch Dream11 team data");
        }
        const data = await response.json();
        setDream11Data(data);
      } catch (error) {
        console.error("Error fetching Dream11 team data:", error.message);
      }
    };

    fetchDream11Data();
  }, []);

  return (
    <div className="dream11-page-container">
      <h1>Dream11 Team Data</h1>
      <table className="dream11-table">
        <thead>
          <tr>
            <th>User ID</th>
            <th>Coach Name</th>
            <th>Team Name</th>
            <th>Score</th>
            <th>Ranking</th>
            <th>Captain</th>
          </tr>
        </thead>
        <tbody>
          {dream11Data.map((team) => (
            <tr key={team.team_name}>
              <td>{team.userid}</td>
              <td>{team.coach_name}</td>
              <td>{team.team_name}</td>
              <td>{team.score}</td>
              <td>{team.ranking}</td>
              <td>{team.captain}</td>
            </tr>
          ))}
        </tbody>
      </table>
      <table className="dream11-player-table">
        <thead>
          <tr>
            <th>Player Image</th>
            <th>Player Name</th>
            <th>Country</th>
            <th>Role</th>
          </tr>
        </thead>
        <tbody>
          {dream11Data.map((team) =>
            Array.from({ length: 11 }).map((_, index) => (
              <tr key={index}>
                <td>
                  <img
                    src={`http://localhost:3000/player-images/${
                      team[`player${index + 1}`]
                    }.jpg`}
                    alt={`Player ${index + 1}`}
                  />
                </td>
                <td>{team[`player${index + 1}`]}</td>
                {/* Assuming country and role data is available in the dream11Data */}
                <td>{team[`player${index + 1}_country`]}</td>
                <td>{team[`player${index + 1}_role`]}</td>
              </tr>
            ))
          )}
        </tbody>
      </table>
    </div>
  );
};

export default Dream11Page;
