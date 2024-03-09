// export default Usersignup;
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
    console.log(formData);
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

  return (
    <div className="signup-container">
      {error && <div className="error-message">{error}</div>}
      <Form className="f" onSubmit={handleSubmit}>
        <Form.Group controlId="formUserId" className="input-form">
          <Form.Label>User ID :</Form.Label>
          <Form.Control
            type="text"
            value={userId}
            onChange={(e) => setUserId(e.target.value)}
            placeholder="Enter your User ID here"
            style={{ transition: "all .2s ease-in-out" }}
            onMouseEnter={(e) => {
              e.target.style.boxShadow = "0 0 10px green";
              e.target.style.transform = "scale(1.05)";
            }}
            onMouseLeave={(e) => {
              e.target.style.boxShadow = "";
              e.target.style.transform = "";
            }}
          />
        </Form.Group>
        <Form.Group controlId="formPassword" className="input-form">
          <Form.Label>Password :</Form.Label>
          <Form.Control
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            placeholder="Enter your password here"
            style={{ transition: "all .2s ease-in-out" }}
            onMouseEnter={(e) => {
              e.target.style.boxShadow = "0 0 10px green";
              e.target.style.transform = "scale(1.05)";
            }}
            onMouseLeave={(e) => {
              e.target.style.boxShadow = "";
              e.target.style.transform = "";
            }}
          />
        </Form.Group>
        <Form.Group controlId="formName" className="input-form">
          <Form.Label>Name:</Form.Label>
          <Form.Control
            type="text"
            value={name}
            onChange={(e) => setName(e.target.value)}
            placeholder="Enter your full name here"
            style={{ transition: "all .2s ease-in-out" }}
            onMouseEnter={(e) => {
              e.target.style.boxShadow = "0 0 10px green";
              e.target.style.transform = "scale(1.05)";
            }}
            onMouseLeave={(e) => {
              e.target.style.boxShadow = "";
              e.target.style.transform = "";
            }}
          />
        </Form.Group>
        <Form.Group controlId="formCountry" className="input-form">
          <Form.Label>Country:</Form.Label>
          <Form.Control
            type="text"
            value={country}
            onChange={(e) => setCountry(e.target.value)}
            placeholder="Enter your country name here"
            style={{ transition: "all .2s ease-in-out" }}
            onMouseEnter={(e) => {
              e.target.style.boxShadow = "0 0 10px green";
              e.target.style.transform = "scale(1.05)";
            }}
            onMouseLeave={(e) => {
              e.target.style.boxShadow = "";
              e.target.style.transform = "";
            }}
          />
        </Form.Group>
        <Form.Group controlId="formTeam" className="input-form">
          <Form.Label>Favourite Team:</Form.Label>
          <Form.Control
            type="text"
            value={team}
            onChange={(e) => setTeam(e.target.value)}
            placeholder="Enter your favorite team here"
            style={{ transition: "all .2s ease-in-out" }}
            onMouseEnter={(e) => {
              e.target.style.boxShadow = "0 0 10px green";
              e.target.style.transform = "scale(1.05)";
            }}
            onMouseLeave={(e) => {
              e.target.style.boxShadow = "";
              e.target.style.transform = "";
            }}
          />
        </Form.Group>
        <Form.Group controlId="formPlayer" className="input-form">
          <Form.Label>Favourite Player:</Form.Label>
          <Form.Control
            type="text"
            value={player}
            onChange={(e) => setPlayer(e.target.value)}
            placeholder="Enter your favorite player here"
            style={{ transition: "all .2s ease-in-out" }}
            onMouseEnter={(e) => {
              e.target.style.boxShadow = "0 0 10px green";
              e.target.style.transform = "scale(1.05)";
            }}
            onMouseLeave={(e) => {
              e.target.style.boxShadow = "";
              e.target.style.transform = "";
            }}
          />
        </Form.Group>
        <Form.Group controlId="formImage" className="image_adder">
          <Form.Label
            style={{
              color: "#B2FFFF",
              fontSize: "20px",
              fontWeight: "bold",
              marginBottom: "10px",
              fontFamily:
                "Cambria, Cochin, Georgia, Times, 'Times New Roman', serif",
            }}
          >
            Image:
          </Form.Label>
          <Form.Control
            type="file"
            onChange={(e) => setImage(e.target.files[0])}
            style={{
              width: "100%",
              padding: "10px",
              paddingBottom: "30px",
              marginTop: "10px",
              border: "1px solid #ccc",
              borderRadius: "5px",
              transition: "all .2s ease-in-out",
            }}
            onMouseEnter={(e) => {
              e.target.style.boxShadow = "0 0 10px green";
              e.target.style.transform = "scale(1.05)";
            }}
            onMouseLeave={(e) => {
              e.target.style.boxShadow = "";
              e.target.style.transform = "";
            }}
          />
        </Form.Group>
        <Button
          type="submit"
          size=""
          className="coolBeans"
          style={{ marginTop: "20px" }}
          onClick={handleSubmit}
        >
          Submit
        </Button>
      </Form>
      <div className="input-form" style={{ marginTop: "20px" }}>
        <Form.Label
          style={{
            padding: "10px",
            color: "#B2FFFF",
            fontSize: "20px",
            fontWeight: "bold",
            marginBottom: "10px",
            fontFamily:
              "Cambria, Cochin, Georgia, Times, 'Times New Roman', serif",
          }}
        >
          Already have an account?
        </Form.Label>
        <div onClick={() => navigate("/user")} style={{ fontSize: "20px" }}>
          <span
            style={{ color: "#5030E5", cursor: "pointer" }}
            onMouseOver={(e) => (e.target.style.color = "#30a5ff")}
            onMouseOut={(e) => (e.target.style.color = "#5030E5")}
          >
            Sign in
          </span>
        </div>
      </div>
    </div>
  );
};

export default Usersignup;
