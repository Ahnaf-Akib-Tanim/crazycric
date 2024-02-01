import axios from "axios";
import React, { useEffect, useState } from "react";

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
    <div
      style={{
        backgroundColor: "#afabe3",
        padding: "10px",
        ///when dream 11 forms will edit here for the alignment
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
        justifyContent: "center",
      }}
    >
      <img
        src={profile.image}
        alt="Profile"
        style={{ width: "250px", height: "200px" }}
      />
      <h1>{profile.username}</h1>
      <ul style={{ listStyleType: "none" }}>
        <li style={{ fontSize: "24px" }}>Country: {profile.countryname}</li>
        <li style={{ fontSize: "24px" }}>Favorite Team: {profile.favteam}</li>
        <li style={{ fontSize: "24px" }}>
          Favorite Player: {profile.favplayer}
        </li>
      </ul>
    </div>
  );
}

export default Profile;
