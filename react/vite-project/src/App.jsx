// eslint-disable-next-line no-unused-vars
import React from "react";
import ReactDOM from "react-dom";
//import { Route, BrowserRouter as Router } from "react-router-dom";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import AdminHome from "./AdminHome";
import Adminlogin from "./Adminlogin";
import Board from "./Board";
import Coachinfo from "./Coachinfo";
import Dream11Home from "./Dream11Home";
import Homepage from "./Homepage";
import Loginpage from "./Loginpage";
import Playerinfo from "./Playerinfo";
import Players from "./Players";
import Profile from "./Profile";
import Scorecard from "./Scorecard";
import StadiumInfo from "./Stadiuminfo";
import Teaminfo from "./Teaminfo";
import Teams from "./Teams";
import Userloginpage from "./Userloginpage";
import Usersignup from "./Usersignup";
const App = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Loginpage />} />
        <Route path="/user" element={<Userloginpage />} />
        <Route path="/user/signup" element={<Usersignup />} />
        <Route path="/user/loggedin" element={<Homepage />} />
        <Route path="/user/loggedin/players" element={<Players />} />
        <Route path="/user/loggedin/teams" element={<Teams />} />
        <Route path="/admin" element={<Adminlogin />} />
        <Route
          path="/user/loggedin/playerinfo/:player_id"
          element={<Playerinfo />}
        />
        <Route path="/user/loggedin/board/:board_name" element={<Board />} />

        <Route
          path="/user/loggedin/teaminfo/:team_name"
          element={<Teaminfo />}
        />
        <Route
          path="/user/loggedin/coach/:coach_name"
          element={<Coachinfo />}
        />
        <Route
          path="/user/loggedin/scorecard/:match_id"
          element={<Scorecard />}
        />
        <Route
          path="/user/loggedin/stadium/:stadium_id"
          element={<StadiumInfo />}
        />
        <Route path="/user/loggedin/profile" element={<Profile />} />
        <Route path="/admin" element={<adminloginpage />} />
        <Route path="/admin/loggedin" element={<AdminHome />} />
        <Route path="/user/loggedin/dream11" element={<Dream11Home />} />
      </Routes>
    </BrowserRouter>
  );
};
const rootElement = document.getElementById("root");
const root = ReactDOM.createRoot(rootElement);
root.render(<App />);
export default App;
