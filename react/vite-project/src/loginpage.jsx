// eslint-disable-next-line no-unused-vars
import React from "react";
import { Button, Col, Container, Row } from "react-bootstrap";
import { useHistory } from "react-router-dom";

import "./loginpage.css";

const Loginpage = () => {
  const history = useHistory();

  const handleOptionClick = (route) => {
    history.push(route);
  };

  return (
    <Container fluid className="login-page-container">
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
