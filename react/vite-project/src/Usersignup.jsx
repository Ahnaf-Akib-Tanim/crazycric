// eslint-disable-next-line no-unused-vars
import React, { useState } from "react";
import { Button, Form } from "react-bootstrap";
import { useNavigate } from "react-router-dom";
import "./usersignup.css";

const Usersignup = () => {
  const navigate = useNavigate();
  const [userId, setUserId] = useState("");
  const [password, setPassword] = useState("");
  const [name, setName] = useState("");
  const [country, setCountry] = useState("");
  const [team, setTeam] = useState("");
  const [player, setPlayer] = useState("");
  const [image, setImage] = useState(null);

  const handleSubmit = async (event) => {
    event.preventDefault();

    const formData = new FormData();
    formData.append("userId", userId);
    formData.append("password", password);
    formData.append("name", name);
    formData.append("country", country);
    formData.append("team", team);
    formData.append("player", player);
    formData.append("image", image);

    const response = await fetch("http://localhost:3000/user/signup", {
      method: "POST",
      body: formData,
    });

    if (response.ok) {
      navigate("/user");
    }
  };

  return (
    <div className="signup-container">
      <Form onSubmit={handleSubmit}>
        <Form.Group controlId="formUserId">
          <Form.Label>User ID</Form.Label>
          <Form.Control
            type="text"
            value={userId}
            onChange={(e) => setUserId(e.target.value)}
          />
        </Form.Group>
        <Form.Group controlId="formPassword">
          <Form.Label>Password</Form.Label>
          <Form.Control
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />
        </Form.Group>
        <Form.Group controlId="formName">
          <Form.Label>Name</Form.Label>
          <Form.Control
            type="text"
            value={name}
            onChange={(e) => setName(e.target.value)}
          />
        </Form.Group>
        <Form.Group controlId="formCountry">
          <Form.Label>Country</Form.Label>
          <Form.Control
            type="text"
            value={country}
            onChange={(e) => setCountry(e.target.value)}
          />
        </Form.Group>
        <Form.Group controlId="formTeam">
          <Form.Label>Team</Form.Label>
          <Form.Control
            type="text"
            value={team}
            onChange={(e) => setTeam(e.target.value)}
          />
        </Form.Group>
        <Form.Group controlId="formPlayer">
          <Form.Label>Player</Form.Label>
          <Form.Control
            type="text"
            value={player}
            onChange={(e) => setPlayer(e.target.value)}
          />
        </Form.Group>
        <Form.Group controlId="formImage">
          <Form.Label>Image</Form.Label>
          <Form.Control
            type="file"
            onChange={(e) => setImage(e.target.files[0])}
          />
        </Form.Group>

        <Button variant="primary" type="submit" className="submit-button">
          Submit
        </Button>
      </Form>
    </div>
  );
};

export default Usersignup;
