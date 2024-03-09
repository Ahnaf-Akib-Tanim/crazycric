import React, { useState } from "react";
import { Col, Form, Row } from "react-bootstrap";
import { useNavigate } from "react-router-dom";
import "./Adminlogin.css"; // Import CSS file

function Adminlogin() {
  const navigate = useNavigate();
  const [adminId, setAdminId] = useState("");
  const [adminPassword, setAdminPassword] = useState("");
  const [serverResponse, setServerResponse] = useState("");

  const handleSubmit = () => {
    if (adminId === "admin" && adminPassword === "admin") {
      navigate("/admin/loggedin");
    } else {
      setServerResponse("Wrong ID/password");
    }
    setAdminId("");
    setAdminPassword("");
  };

  return (
    <div className="admin-login-container">
      <h2 className="admin-login-header">Admin Login</h2>
      <Form className="admin-login-form">
        <Form.Group as={Row} controlId="formAdminId">
          <Form.Label column sm="4">
            Admin ID:
          </Form.Label>
          <Col sm="8">
            <Form.Control
              type="text"
              placeholder="Admin ID"
              value={adminId}
              onChange={(e) => setAdminId(e.target.value)}
            />
          </Col>
        </Form.Group>
        <Form.Group as={Row} controlId="formAdminPassword">
          <Form.Label column sm="4">
            Password:
          </Form.Label>
          <Col sm="8">
            <Form.Control
              type="password"
              placeholder="Password"
              value={adminPassword}
              onChange={(e) => setAdminPassword(e.target.value)}
            />
          </Col>
        </Form.Group>
        <button className="login-button" onClick={handleSubmit}>
          Login
        </button>
        {serverResponse && <p>{serverResponse}</p>}
      </Form>
    </div>
  );
}

export default Adminlogin;
