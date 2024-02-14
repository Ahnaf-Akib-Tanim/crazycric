import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import "./teaminfo.css";

const Board = () => {
  const [boardData, setBoardData] = useState(null);
  const { board_name } = useParams();

  useEffect(() => {
    const fetchBoardData = async () => {
      const response = await fetch(
        `http://localhost:3000/user/loggedin/board/${board_name}`
      );
      const data = await response.json();
      setBoardData(data[0]);
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
    <div className="team-info-container">
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
    </div>
  );
};

export default Board;
