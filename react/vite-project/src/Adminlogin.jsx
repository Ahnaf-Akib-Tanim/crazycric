/*import React, { useState } from "react";
import { Button, Col, Form, Row } from "react-bootstrap";
import { useNavigate } from "react-router-dom";

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
    <div
      style={{
        width: "100%",
        height: "100vh",
        position: "relative",
        background: "#AFAbE3",
      }}
    >
      <h2>Admin Login</h2>
      <Form>
        <Form.Group as={Row} controlId="formAdminId">
          <Form.Label column sm="2">
            Admin ID:
          </Form.Label>
          <Col sm="10">
            <Form.Control
              type="text"
              placeholder="Admin ID"
              value={adminId}
              onChange={(e) => setAdminId(e.target.value)}
            />
          </Col>
        </Form.Group>
        <Form.Group as={Row} controlId="formAdminPassword">
          <Form.Label column sm="2">
            Password:
          </Form.Label>
          <Col sm="10">
            <Form.Control
              type="password"
              placeholder="Password"
              value={adminPassword}
              onChange={(e) => setAdminPassword(e.target.value)}
            />
          </Col>
        </Form.Group>
        <Button variant="primary" onClick={handleSubmit}>
          Submit
        </Button>
        {serverResponse && <p>{serverResponse}</p>}
      </Form>
    </div>
  );
}

export default Adminlogin; */
import React, { useState } from "react";
import { Col, Form, Row } from "react-bootstrap";
import { useNavigate } from "react-router-dom";
import "./Adminlogin.css"; // Import CSS file
//import Button from 'react-bootstrap/Button';
//import "bootstrap/dist/css/bootstrap.min.css";

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
      {" "}
      {/* Apply container class */}
      <h2>Admin Login</h2>
      <Form>
        <Form.Group as={Row} controlId="formAdminId">
          <Form.Label column sm="4">
            Admin ID:
          </Form.Label>
          <Col sm="10">
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
          <Col sm="10">
            <Form.Control
              type="password"
              placeholder="Password"
              value={adminPassword}
              onChange={(e) => setAdminPassword(e.target.value)}
            />
          </Col>
        </Form.Group>
        <button
          type="button"
          className="btn btn-primary .btn-lg"
          style={{ position: "relative", top: "20px" }}
          onClick={handleSubmit}
        >
          Login
        </button>
        {serverResponse && <p>{serverResponse}</p>}
      </Form>
    </div>
  );
}

export default Adminlogin;
