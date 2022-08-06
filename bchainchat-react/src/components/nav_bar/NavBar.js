import React from 'react'
import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import logo from '../../image/BChainChat_Logo_white.png';
import './NavBar.css';


function NavBar() {
  return (

    <Container>
      <Navbar bg="myPurple" expand="lg" variant="myWhite">
        <Container fluid>
          <Navbar.Brand href="http://localhost:3000/"><img className="logo-img" src={logo} alt="logo" /></Navbar.Brand>
          <Navbar.Toggle aria-controls="navbarScroll" />
          <Navbar.Collapse id="navbarScroll">

            <Nav className="me-auto my-2 my-lg-0 justify-content-end flex-grow-1 pe-3"  style={{ maxHeight: '100px' }} navbarScroll>
              <Nav.Link className="myWhite" href="http://localhost:3000/profile">User Profile</Nav.Link>
              <Nav.Link className="myWhite" href="http://localhost:3000/posts/">Timeline</Nav.Link>
              <Nav.Link className="myWhite" href="http://localhost:3001/">News</Nav.Link>
              <Nav.Link className="myWhite" href="http://localhost:3000/events">Events</Nav.Link>
              <Nav.Link className="myWhite" href="http://localhost:3000/events">Sign Out</Nav.Link>
            </Nav>
          </Navbar.Collapse>
        </Container>
      </Navbar>

    </Container>
  )
}

export default NavBar;