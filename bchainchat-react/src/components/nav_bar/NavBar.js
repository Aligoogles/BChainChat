import React from 'react'
import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import logo from '../../image/BChainChat_Logo.png';
import './NavBar.css';


function NavBar() {
  return (
    <Navbar bg="light" expand="lg">
      <Container fluid>
        <Navbar.Brand href="#"><img className="logo-img" src={logo} alt="MetaMask" /></Navbar.Brand>
        <Navbar.Toggle aria-controls="navbarScroll" />
        <Navbar.Collapse id="navbarScroll">

          <Nav className="me-auto my-2 my-lg-0 justify-content-end flex-grow-1 pe-3" style={{ maxHeight: '100px' }} navbarScroll>
            <Nav.Link href="#action1">User Profile</Nav.Link>
            <Nav.Link href="#action2">Timeline</Nav.Link>
            <Nav.Link href="#action2">News</Nav.Link>
            <Nav.Link href="#action2">Events</Nav.Link>
          </Nav>
          {/* <Form className="d-flex">
            <Form.Control
              type="search"
              placeholder="Search for user"
              className="me-2"
              aria-label="Search"
            />
            <Button variant="outline-success">Search</Button>
          </Form> */}
        </Navbar.Collapse>
      </Container>
    </Navbar>
  )
}

export default NavBar;