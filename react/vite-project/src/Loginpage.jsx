// eslint-disable-next-line no-unused-vars
import React from "react";
import { Button, Col, Container, Row } from "react-bootstrap";
import { useNavigate } from "react-router-dom"; // Import useNavigate

import loginBg from "./loginbg.jpg";
import "./loginpage.css";

const Loginpage = () => {
  const navigate = useNavigate(); // Initialize useNavigate

  const handleOptionClick = (route) => {
    navigate(route); // Use navigate instead of history.push
  };

  return (
    <Container
      fluid
      className="login-page-container"
      style={{ backgroundImage: `url(${loginBg})` }}
    >
      <Row>
        <Col
          md={6}
          className="login-option"
          onClick={() => handleOptionClick("/user")}
        >
          <Button variant="outline-primary" size="lg" block>
            User
          </Button>
        </Col>
        <Col
          md={6}
          className="login-option"
          onClick={() => handleOptionClick("/admin")}
        >
          <Button variant="outline-danger" size="lg" block>
            Admin
          </Button>
        </Col>
      </Row>
    </Container>
  );
};

export default Loginpage;
