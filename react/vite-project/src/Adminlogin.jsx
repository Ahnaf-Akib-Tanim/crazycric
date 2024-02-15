import React, { useState } from "react";
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

export default Adminlogin;
