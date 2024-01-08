// eslint-disable-next-line no-unused-vars
import React from "react";
import ReactDOM from "react-dom";
import { Route, BrowserRouter as Router } from "react-router-dom";
import Loginpage from "./loginpage.js";
console.log("error no");
const App = () => {
  return (
    <Router>
      <Route path="/" exact component={Loginpage} />
      {/* Add other routes/components as needed */}
    </Router>
  );
};

const rootElement = document.getElementById("root");
const root = ReactDOM.createRoot(rootElement);
root.render(<App />);
export default App;