/*//eslint-disable-next-line no-unused-vars
import { faArrowLeft } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
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
  const [buttonOpacity, setButtonOpacity] = useState("0.8");
  const [linkOpacity, setLinkOpacity] = useState("0.8");
  const handleSubmit = async () => {
    try {
      const response = await fetch("http://localhost:3000/user", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ userId, password }),
      });
      console.log(response);
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }
      const data = await response.json();
      console.log(data);

      if (data.status === "success") {
        navigate("/user/loggedin");
        //navigate("/loggedin");
      } else if (data.status === "failure") {
        setServerResponse("failure");
      } else {
        setServerResponse("Error communicating with the server");
      }
    } catch (error) {
      console.error("Error:", error.message || error);
      setServerResponse("Error communicating with the server");
    }
    setUserId("");
    setPassword("");
  };

  const inputStyle = {
    backgroundColor: "lightorange",
    color: "darkorange",
    fontSize: "18px",
    marginBottom: "10px",
    padding: "8px",
    borderRadius: "5px",
    border: "1px solid darkorange",
  };
  const inputStyle1 = {
    backgroundColor: "lightorange",
    color: "darkorange",
    fontSize: "18px",
    marginBottom: "10px",
    padding: "8px",
    borderRadius: "5px",
    border: "1px solid darkorange",
  };

  const buttonStyle = {
    backgroundColor: "rgb(255,51,51)",
    opacity: buttonOpacity,
    color: "white",
    fontSize: "15px",
    padding: "15px",
    borderRadius: "10px",
    border: "none",
    position: "relative",
    top: "40px",
    left: "225px",
    cursor: "pointer",
  };

  const linkStyle = {
    opacity: linkOpacity,
    color: "rgb(255,51,51)",
    fontSize: "23px",
    position: "relative",
    top: "-5px",
    left: "70px",
  };

  const errorMessageStyle = {
    color: "red",
    marginTop: "10px",
    opacity: "0.8",
  };

  return (
    <div className="user-page-container">
      <button className="go-back-button" onClick={() => navigate(-1)}>
        <FontAwesomeIcon icon={faArrowLeft} size="lg" />
      </button>
      <Form>
        <Form.Group controlId="formUserId">
          <Form.Label
            style={{
              color: "rgb(30,0,100)",
              fontSize: "20px",
              padding: "10px",
              opacity: "1.00",
            }}
          >
            User ID
          </Form.Label>
          <Form.Control
            type="text"
            placeholder="Enter your User ID"
            value={userId}
            onChange={(e) => {
              setUserId(e.target.value);
              setServerResponse("");
            }}
            style={inputStyle}
          />
        </Form.Group>

        <Form.Group controlId="formPassword">
          <Form.Label
            style={{
              color: "rgb(30,0,100)",
              fontSize: "20px",
              padding: "10px",
              opacity: "1.00",
            }}
          >
            User Password
          </Form.Label>
          <Form.Control
            type="password"
            placeholder="Enter your Password"
            value={password}
            onChange={(e) => {
              setPassword(e.target.value);
              setServerResponse("");
            }}
            style={inputStyle1}
          />
        </Form.Group>

        <div
          onMouseEnter={() => setButtonOpacity("1")}
          onMouseLeave={() => setButtonOpacity("0.8")}
        >
          <Button variant="primary" onClick={handleSubmit} style={buttonStyle}>
            Submit
          </Button>
        </div>

        <div
          className="signup-link"
          style={linkStyle}
          onMouseEnter={() => setLinkOpacity("1")}
          onMouseLeave={() => setLinkOpacity("0.6")}
        >
          <Link to="/user/signup">Sign Up</Link>
        </div>

        {serverResponse === "failure" && (
          <div className="error-message" style={errorMessageStyle}>
            Wrong User ID or Password
          </div>
        )}
      </Form>
    </div>
  );
};
export default Userloginpage; */

import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
//importing image
import bg from "./bg.png";
function UserLoginPage() {
  const navigate = useNavigate();
  const [userId, setUserId] = useState("");
  const [password, setPassword] = useState("");
  const [serverResponse, setServerResponse] = useState("");

  const handleSubmit = async (event) => {
    event.preventDefault();
    try {
      const response = await fetch("http://localhost:3000/user", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ userId, password }),
      });

      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }

      const data = await response.json();

      if (data.status === "success") {
        navigate("/user/loggedin");
      } else if (data.status === "failure") {
        setServerResponse("failure");
      } else {
        setServerResponse("Error communicating with the server");
      }
    } catch (error) {
      console.error("Error:", error.message || error);
      setServerResponse("Error communicating with the server");
    }
    setUserId("");
    setPassword("");
  };

  return (
    <div
      style={{
        width: "100%",
        height: "100vh",
        position: "relative",
        background: "#AFABE3",
      }}
    >
      <div
        style={{
          width: 279,
          height: 72,
          left: 603,
          top: -340,
          position: "absolute",
          color: "#1E232C",
          fontSize: 30,
          fontFamily: "Urbanist",
          fontWeight: "700",
          lineHeight: 39,
          wordWrap: "break-word",
        }}
      >
        Welcome back!
      </div>
      <form onSubmit={handleSubmit}>
        <div
          style={{
            width: 345,
            height: 50,
            left: 533,
            top: 412,
            position: "absolute",
          }}
        >
          <input
            type="text"
            value={userId}
            onChange={(e) => setUserId(e.target.value)}
            style={{
              width: 375,
              height: 60,
              left: 0,
              top: -120,
              position: "absolute",
              background: "#F7F8F9",
              borderRadius: 8,
              border: "1px #E8ECF4 solid",
            }}
            placeholder="Enter your user id"
          />
        </div>
        <div
          style={{
            width: 345,
            height: 50,
            left: 533,
            top: 510,
            position: "absolute",
          }}
        >
          <input
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            style={{
              width: 375,
              height: 60,
              left: 0,
              top: -140,
              position: "absolute",
              background: "#F7F8F9",
              borderRadius: 8,
              border: "1px #E8ECF4 solid",
            }}
            placeholder="Enter your password"
          />
        </div>
        <div
          style={{
            width: 375,
            height: 70,
            left: 648,
            top: 612,
            position: "absolute",
          }}
        >
          <button
            type="submit"
            style={{
              width: 125,
              height: 50,
              left: 0,
              top: -163,
              position: "absolute",
              background: "#5030E5",
              borderRadius: 8,
            }}
          >
            Login
          </button>
        </div>
      </form>
      {serverResponse === "failure" && (
        <div
          style={{
            color: "red",
            marginTop: "10px",
            position: "relative",
            top: "507px",
            left: "605px",
            //font bigger
            fontSize: "20px",
          }}
        >
          Wrong User ID or Password
        </div>
      )}
      <div
        style={{
          left: 593,
          top: 540,
          position: "absolute",
          textAlign: "center",
        }}
      >
        Don’t have an account?{" "}
        <span
          onClick={() => navigate("/user/signup")}
          style={{ color: "#5030E5", cursor: "pointer" }}
        >
          Register Now
        </span>
      </div>
      <img
        style={{
          width: 497,
          height: 280,
          left: 472,
          top: 20,
          position: "absolute",
        }}
        src={bg}
      />
    </div>
  );
}

export default UserLoginPage;
