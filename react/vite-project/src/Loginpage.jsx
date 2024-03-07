// eslint-disable-next-line no-unused-vars
import React, { useState } from "react";
import { Button, Col, Container, Row } from "react-bootstrap";
import { useNavigate } from "react-router-dom";

import "./loginp.css";

const Loginpage = () => {
  const navigate = useNavigate();
  const [buttonStylesUser, setButtonStylesUser] = useState({
    position: "fixed",
    top: "280px",
    left: "550px",
    opacity: 0.6,
  });

  const [buttonStylesAdmin, setButtonStylesAdmin] = useState({
    position: "fixed",
    top: "340px",
    left: "550px",
    opacity: 0.6, // Initial opacity
  });

  const handleOptionClick = (route) => {
    navigate(route);
  };

  const handleMouseOver = () => {
    // Increase brightness on mouseover
    setButtonStylesUser((prevStyles) => ({
      ...prevStyles,
      opacity: 1,
    }));
    setButtonStylesAdmin((prevStyles) => ({
      ...prevStyles,
      opacity: 1,
    }));
  };

  const handleMouseOut = () => {
    // Reset opacity on mouseout
    setButtonStylesUser((prevStyles) => ({
      ...prevStyles,
      opacity: 0.6,
    }));
    setButtonStylesAdmin((prevStyles) => ({
      ...prevStyles,
      opacity: 0.6,
    }));
  };

  return (
    <Container fluid className="login-page-container">
      <Row>
        <Col
          md={6}
          className="login-option"
          style={buttonStylesUser}
          onClick={() => handleOptionClick("/user")}
          onMouseOver={handleMouseOver}
          onMouseOut={handleMouseOut}
        >
          <Button
            className="coolBeans"
            style={{ color: "#fff", fontSize: "23px", marginBottom: "35px" }}
            size="lg"
            block
          >
            User
          </Button>
        </Col>
        <Col
          md={6}
          className="login-option"
          style={buttonStylesAdmin}
          onClick={() => handleOptionClick("/admin")}
          onMouseOver={handleMouseOver}
          onMouseOut={handleMouseOut}
        >
          <Button
            className="coolBeans"
            style={{ color: "#fff", fontSize: "25px" }}
            size="lg"
            block
          >
            Admin
          </Button>
        </Col>
      </Row>
    </Container>
  );
};

export default Loginpage;
