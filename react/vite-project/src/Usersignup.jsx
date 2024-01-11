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
  const [error, setError] = useState(null);

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
    const data = await response.json();
    console.log(response);
    console.log(data);
    if (data.message === "User ID already exists!") {
      console.log("User ID already exists!");
      setError("User ID already exists!");
    } else {
      navigate("/user");
    }
  };
  const errorStyle = {
    color: "red",
    fontSize: "20px",
    fontWeight: "bold",
  };
  const inputStyle = {
    backgroundColor: "lightorange",
    color: "black",
    fontSize: "13px",
    marginBottom: "7px",
    padding: "10px",
    borderRadius: "7px",
    position: "relative",
    left: "25px",
    top: "-30px",
  };
  const inputStyle1 = {
    backgroundColor: "lightorange",
    color: "black",
    fontSize: "13px",
    marginBottom: "7px",
    padding: "10px",
    borderRadius: "7px",
    position: "relative",
    left: "-295px",
    top: "-40px",
    border: "2px solid darkorange",
  };
  const inputStyle2 = {
    backgroundColor: "lightorange",
    color: "black",
    fontSize: "13px",
    marginBottom: "7px",
    padding: "10px",
    borderRadius: "7px",
    position: "relative",
    left: "310px",
    top: "-80px",
    border: "2px solid darkorange",
  };
  const inputStyle3 = {
    backgroundColor: "lightorange",
    color: "black",
    fontSize: "13px",
    marginBottom: "7px",
    padding: "10px",
    borderRadius: "7px",
    position: "relative",
    left: "-280px",
    top: "00px",
    border: "2px solid darkorange",
  };
  const inputStyle4 = {
    backgroundColor: "lightorange",
    color: "black",
    fontSize: "13px",
    marginBottom: "7px",
    padding: "10px",
    borderRadius: "7px",
    position: "relative",
    left: "300px",
    top: "-40px",
    border: "2px solid darkorange",
  };
  const inputStyle5 = {
    backgroundColor: "lightorange",
    color: "black",
    fontSize: "13px",
    marginBottom: "7px",
    padding: "10px",
    borderRadius: "7px",
    position: "relative",
    left: "-280px",
    top: "20px",
    border: "2px solid darkorange",
  };
  const inputStyle6 = {
    backgroundColor: "lightorange",
    color: "black",
    fontSize: "13px",
    marginBottom: "7px",
    padding: "10px",
    borderRadius: "7px",
    position: "relative",
    left: "300px",
    top: "-10px",
    border: "2px solid darkorange",
  };
  const buttonStyle = {
    backgroundColor: "rgb(255,51,51)",
    color: "white",
    fontSize: "15px",
    padding: "15px",
    borderRadius: "10px",
    border: "none",
    position: "relative",
    top: "-220px",
    left: "120px",
    cursor: "pointer",
  };

  return (
    <div className="signup-container">
      {error && <div style={errorStyle}>{error}</div>}
      <Form onSubmit={handleSubmit}>
        <Form.Group controlId="formUserId">
          <Form.Label
            style={{
              color: "rgb(30,0,100)",
              fontSize: "18px",
              padding: "12px",
              opacity: "1.00",
              position: "relative",
              left: "-300px",
              top: "-40px",
            }}
          >
            User ID
          </Form.Label>
          <Form.Control
            type="text"
            value={userId}
            onChange={(e) => setUserId(e.target.value)}
            style={inputStyle1}
          />
        </Form.Group>
        <Form.Group controlId="formPassword">
          <Form.Label
            style={{
              color: "rgb(30,0,100)",
              fontSize: "18px",
              padding: "10px",
              opacity: "1.00",
              position: "relative",
              left: "300px",
              top: "-80px",
            }}
          >
            Password
          </Form.Label>
          <Form.Control
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            style={inputStyle2}
          />
        </Form.Group>
        <Form.Group controlId="formName">
          <Form.Label
            style={{
              color: "rgb(30,0,100)",
              fontSize: "18px",
              padding: "10px",
              opacity: "1.00",
              position: "relative",
              left: "-300px",
              top: "00px",
            }}
          >
            Name
          </Form.Label>
          <Form.Control
            type="text"
            value={name}
            onChange={(e) => setName(e.target.value)}
            style={inputStyle3}
          />
        </Form.Group>
        <Form.Group controlId="formCountry">
          <Form.Label
            style={{
              color: "rgb(30,0,100)",
              fontSize: "18px",
              padding: "10px",
              opacity: "1.00",
              position: "relative",
              left: "300px",
              top: "-40px",
            }}
          >
            Country
          </Form.Label>
          <Form.Control
            type="text"
            value={country}
            onChange={(e) => setCountry(e.target.value)}
            style={inputStyle4}
          />
        </Form.Group>
        <Form.Group controlId="formTeam">
          <Form.Label
            style={{
              color: "rgb(30,0,100)",
              fontSize: "18px",
              padding: "10px",
              opacity: "1.00",
              position: "relative",
              left: "-280px",
              top: "20px",
            }}
          >
            Favourite Team
          </Form.Label>
          <Form.Control
            type="text"
            value={team}
            onChange={(e) => setTeam(e.target.value)}
            style={inputStyle5}
          />
        </Form.Group>
        <Form.Group controlId="formPlayer">
          <Form.Label
            style={{
              color: "rgb(30,0,100)",
              fontSize: "18px",
              padding: "10px",
              opacity: "1.00",
              position: "relative",
              left: "300px",
              top: "-10px",
            }}
          >
            Favourite Player
          </Form.Label>
          <Form.Control
            type="text"
            value={player}
            onChange={(e) => setPlayer(e.target.value)}
            style={inputStyle6}
          />
        </Form.Group>
        <Form.Group controlId="formImage">
          <Form.Label
            style={{
              color: "rgb(30,0,100)",
              fontSize: "18px",
              padding: "10px",
              opacity: "1.00",
              position: "relative",
              left: "30px",
              top: "-30px",
            }}
          >
            Image
          </Form.Label>
          <Form.Control
            type="file"
            onChange={(e) => setImage(e.target.files[0])}
            style={inputStyle}
          />
        </Form.Group>

        <Button variant="primary" type="submit" style={buttonStyle}>
          Submit
        </Button>
      </Form>
    </div>
  );
};

export default Usersignup;
