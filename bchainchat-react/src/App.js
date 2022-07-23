/* eslint-disable react/react-in-jsx-scope */

import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import LandingPage from './pages/home/LandingPage';
import NavBar from './components/nav_bar/NavBar'


function App() {
  return (
    
    <div className="App">
      <NavBar />
      <br />
      <LandingPage />
      
      
    </div>
  );
}

export default App;
