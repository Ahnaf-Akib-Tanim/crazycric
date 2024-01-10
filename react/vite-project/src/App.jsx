// eslint-disable-next-line no-unused-vars
import React from "react";
import ReactDOM from "react-dom";
//import { Route, BrowserRouter as Router } from "react-router-dom";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import Loginpage from "./Loginpage";
import Userloginpage from "./Userloginpage";
const App = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Loginpage />}>
          <Route path="user" element={<Userloginpage />} />

          <Route path="admin" element={<adminloginpage />} />
        </Route>
      </Routes>
    </BrowserRouter>
  );
};
// <Route path="/user/signup" element={< />} />
// <Route path="/user/loggedin" element={<Userloginpage />} />

const rootElement = document.getElementById("root");
const root = ReactDOM.createRoot(rootElement);
root.render(<App />);
export default App;
