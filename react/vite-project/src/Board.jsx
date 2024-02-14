import React, { useEffect, useState } from "react";
import { Link, useParams } from "react-router-dom";
import "./board.css";
import "./teaminfo.css";

const Board = () => {
  const [boardData, setBoardData] = useState(null);
  const [players, setPlayers] = useState([]);
  const { board_name } = useParams();

  useEffect(() => {
    const fetchBoardData = async () => {
      const response = await fetch(
        `http://localhost:3000/user/loggedin/board/${board_name}`
      );
      const data = await response.json();
      setBoardData(data.boardInfo);
      setPlayers(data.players);
      console.log(data);
    };

    fetchBoardData();
  }, [board_name]);

  if (!boardData) {
    return <div>Loading...</div>;
  }

  const formatKey = (key) => {
    return key
      .replace(/_/g, " ")
      .replace(/(^\w|\s\w)/g, (m) => m.toUpperCase());
  };

  return (
    <div
      className="team-info-container"
      style={{ display: "flex", flexDirection: "column", alignItems: "center" }}
    >
      <div className="team-name-container">
        <img
          src={`http://localhost:3000/cricketboardimages/${boardData.board_name}.png`}
          alt={boardData.board_name}
        />
        <h1>
          <strong>{boardData.board_name}</strong>
        </h1>
      </div>
      <div className="table-container">
        <table>
          <tbody>
            {Object.entries(boardData).map(([key, value]) => {
              if (key === "board_name" || key == "image") return null;
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
      <div
        style={{
          display: "flex",
          flexDirection: "row",
          flexWrap: "wrap",
          justifyContent: "center",
          marginTop: "100px",
          maxWidth: "900px",
          margin: "auto",
        }}
      >
        {players.map((player) => (
          <div
            key={player.player_id}
            style={{ width: "150px", margin: "10px", textAlign: "center" }}
          >
            <img
              src={`http://localhost:3000/images/${player.player_name}.jpeg`}
              alt={player.player_name}
              className="image-size"
              style={{
                width: "120px",
                height: "120px",
                borderRadius: "50%",
              }}
            />
            <Link
              to={`/user/loggedin/playerinfo/${player.player_id}`}
              style={{ fontSize: "18px", fontFamily: "Arial, sans-serif" }}
            >
              {player.player_name}
            </Link>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Board;
