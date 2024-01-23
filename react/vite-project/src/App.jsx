// eslint-disable-next-line no-unused-vars
import React from "react";
import ReactDOM from "react-dom";
//import { Route, BrowserRouter as Router } from "react-router-dom";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import Homepage from "./Homepage";
import Loginpage from "./Loginpage";
import Playerinfo from "./Playerinfo";
import Players from "./Players";
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
        <Route
          path="/user/loggedin/playerinfo/:player_id"
          element={<Playerinfo />}
        />
        <Route path="/admin" element={<adminloginpage />} />
      </Routes>
    </BrowserRouter>
  );
};
const rootElement = document.getElementById("root");
const root = ReactDOM.createRoot(rootElement);
root.render(<App />);
export default App;
