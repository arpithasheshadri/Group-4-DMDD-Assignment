import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Header from "./Header.jsx";
import Customer from "./Customer/index.jsx";
import Account from "./Account/index.jsx";

const App = () => {
  return (
    <Router>
      <div>
        <Header />
        <Routes>
          <Route path="/customer" element={<Customer />} />
          <Route path="/account" element={<Account />} />
        </Routes>
      </div>
    </Router>
  );
};

export default App;
