import axios from "axios";
import React, { useEffect, useState } from "react";
import "./Profile.css";

function Profile() {
  const [profile, setProfile] = useState({});

  useEffect(() => {
    axios
      .get("http://localhost:3000/user/loggedin/profile")
      .then((response) => {
        console.log(response.data);
        setProfile(response.data);
      })
      .catch((error) => {
        console.error("Error fetching profile:", error);
      });
  }, []);

  return (
    <div className="profile-container">
      <img
        src={profile.image}
        alt="Profile"
        style={{ width: "250px", height: "200px" }}
      />
      <h1>{profile.username}</h1>
      <ul style={{ listStyleType: "none" }}>
        <li style={{ fontSize: "24px" }}>
          <span style={labelStyle}>Country:</span> {profile.countryname}
        </li>
        <li style={{ fontSize: "24px" }}>
          <span style={labelStyle}>Favorite Team:</span> {profile.favteam}
        </li>
        <li style={{ fontSize: "24px" }}>
          <span style={labelStyle}>Favorite Player:</span> {profile.favplayer}
        </li>
      </ul>
    </div>
  );
}

const labelStyle = {
  fontFamily: "sans-serif",
  opacity: 0.5,
  fontSize: "18px",
  fontWeight: "bold",
};

export default Profile;
