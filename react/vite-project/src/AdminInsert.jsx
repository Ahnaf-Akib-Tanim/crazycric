import React, { useState } from "react";
import { Button, Form } from "react-bootstrap";
import { useNavigate } from "react-router-dom";
import "./AdminInsert.css"; // Import the CSS file

function InsertPlayer() {
  const [playerData, setPlayerData] = useState({
    player_name: "",
    team_name: "",
    player_image_path: null,
    player_date_of_birth: "",
    player_role: "",
    player_batting_style: "",
    player_bowling_style: "",
  });
  const navigate = useNavigate();
  const handleChange = (e) => {
    const { name, value } = e.target;
    setPlayerData({
      ...playerData,
      [name]: value,
    });
  };

  const handleImageChange = (e) => {
    setPlayerData({
      ...playerData,
      player_image_path: e.target.files[0],
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    if (
      !playerData.player_name ||
      !playerData.team_name ||
      !playerData.player_image_path ||
      !playerData.player_date_of_birth ||
      !playerData.player_role ||
      !playerData.player_batting_style
    ) {
      alert("Please fill in all fields");
      return;
    }
    const formData = new FormData();
    formData.append("playerName", playerData.player_name);
    formData.append("playerCountry", playerData.team_name);
    formData.append("playerImage", playerData.player_image_path);
    formData.append("playerBirthdate", playerData.player_date_of_birth);
    formData.append("playerRole", playerData.player_role);
    formData.append("playerBattingStyle", playerData.player_batting_style);
    formData.append("playerBowlingStyle", playerData.player_bowling_style);

    // Send formData to backend API endpoint for player insertion
    fetch("http://localhost:3000/admin/loggedin/insert", {
      method: "POST",
      body: formData,
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("Player inserted:", data);
        // Reset form fields after successful insertion
        setPlayerData({
          player_id: "",
          player_name: "",
          team_name: "",
          player_image_path: null,
          player_date_of_birth: "",
          player_role: "",
          player_batting_style: "",
          player_bowling_style: "",
        });
        navigate("/admin/loggedin");
      })
      .catch((error) => {
        console.error("Error inserting player:", error);
        alert("Failed to insert player");
      });
  };

  return (
    <div className="container1">
      <div className="container">
        <h1 className="mt-5">Insert Player</h1>
        <Form onSubmit={handleSubmit}>
          <Form.Group controlId="player_name">
            <Form.Label>Player Name</Form.Label>
            <Form.Control
              type="text"
              name="player_name"
              value={playerData.player_name}
              onChange={handleChange}
              className="input-field"
            />
          </Form.Group>
          <Form.Group controlId="team_name">
            <Form.Label>Player Country</Form.Label>
            <Form.Control
              type="text"
              name="team_name"
              value={playerData.team_name}
              onChange={handleChange}
              className="input-field"
            />
          </Form.Group>
          <Form.Group controlId="player_image_path">
            <Form.Label>Player Image</Form.Label>
            <Form.Control
              type="file"
              name="player_image_path"
              onChange={handleImageChange}
              className="input-field"
            />
          </Form.Group>
          <Form.Group controlId="player_date_of_birth">
            <Form.Label>Player Birthdate</Form.Label>
            <Form.Control
              type="date"
              name="player_date_of_birth"
              value={playerData.player_date_of_birth}
              onChange={handleChange}
              className="input-field"
            />
          </Form.Group>
          <Form.Group controlId="player_role">
            <Form.Label>Player Role</Form.Label>
            <Form.Control
              type="text"
              name="player_role"
              value={playerData.player_role}
              onChange={handleChange}
              className="input-field"
            />
          </Form.Group>
          <Form.Group controlId="player_batting_style">
            <Form.Label>Player Batting Style</Form.Label>
            <Form.Control
              type="text"
              name="player_batting_style"
              value={playerData.player_batting_style}
              onChange={handleChange}
              className="input-field"
            />
          </Form.Group>
          <Form.Group controlId="player_bowling_style">
            <Form.Label>Player Bowling Style</Form.Label>
            <Form.Control
              type="text"
              name="player_bowling_style"
              value={playerData.player_bowling_style}
              onChange={handleChange}
              className="input-field"
            />
          </Form.Group>
          <Button className="submit-button" type="submit">
            Submit
          </Button>
        </Form>
      </div>
    </div>
  );
}
export default InsertPlayer;
