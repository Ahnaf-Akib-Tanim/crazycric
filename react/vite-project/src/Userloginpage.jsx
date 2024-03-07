import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
//importing image
import bg from "./bg.png";
import "./Userloginpage.css";
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
      }}
      className="fitit"
    >
      <div
        style={{
          color: "white",
          width: 279,
          height: 72,
          left: 603,
          top: -340,
          position: "absolute",
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
              left: 0,
              top: -163,
              position: "absolute",
            }}
            className="coolBeans"
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
          color: "white",
          left: 593,
          top: 540,
          position: "absolute",
          textAlign: "center",
        }}
      >
        Don’t have an account?{" "}
        <span
          onClick={() => navigate("/user/signup")}
          style={{ color: "blue", cursor: "pointer" }}
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
