// eslint-disable-next-line no-unused-vars
import React, { useState } from "react";
import { Button, Form } from "react-bootstrap";
import { Link, useNavigate } from "react-router-dom";
import "./userloginpage.css";

const Userloginpage = () => {
  const navigate = useNavigate();
  const [userId, setUserId] = useState("");
  const [password, setPassword] = useState("");
  const [serverResponse, setServerResponse] = useState("");
  const handleSubmit = async () => {
    try {
      const response = await fetch("http://localhost:5173/user", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ userId, password }),
      });

      const data = await response.json();

      if (data.status === "success") {
        navigate("/user/loggedin");
      } else if (data.status === "failure") {
        setServerResponse("Wrong User ID or Password");
      } else {
        setServerResponse("Error communicating with the server");
      }
    } catch (error) {
      console.error("Error:", error.message || error);
      setServerResponse("Error communicating with the server");
    }
  };

  return (
    <div className="user-page-container">
      <Form>
        <Form.Group controlId="formUserId">
          <Form.Label>User ID</Form.Label>
          <Form.Control
            type="text"
            placeholder="Enter your User ID"
            value={userId}
            onChange={(e) => setUserId(e.target.value)}
          />
        </Form.Group>

        <Form.Group controlId="formPassword">
          <Form.Label>User Password</Form.Label>
          <Form.Control
            type="password"
            placeholder="Enter your Password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />
        </Form.Group>

        <Button variant="primary" onClick={handleSubmit}>
          Submit
        </Button>

        <div className="signup-link">
          <Link to="/user/signup">Sign Up</Link>
        </div>

        {serverResponse === "failure" && (
          <div className="error-message">Wrong User ID or Password</div>
        )}
      </Form>
    </div>
  );
};

export default Userloginpage;
