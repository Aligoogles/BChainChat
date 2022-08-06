/* eslint-disable react/react-in-jsx-scope */
import React from 'react';
import {BrowserRouter as Router} from 'react-router-dom';
import 'bootstrap/dist/css/bootstrap.min.css';
import NavBar from './components/nav_bar/NavBar';
import News from './pages/news/News';


function App() {
  return (
    
    <div className="App">
      <Router>
        <NavBar />
        <br />
        <News />
      </Router> 
    </div>
  );
}

export default App;
