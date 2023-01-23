import Button from 'react-bootstrap/Button';
import Container from 'react-bootstrap/Container';
import Form from 'react-bootstrap/Form';
import Navbar from 'react-bootstrap/Navbar';
import React, {Components} from "react";
import { Link } from "react-router-dom";
import { useNavigate } from 'react-router-dom';

function HomeNave() {
     const navigate = useNavigate();
     const goLogin=()=>{
         navigate("/Login");
    }
    const goRegistration=()=>{
        navigate("/Registration");
    }
    const goHome=()=>{
      navigate("/Home");
  }
   
  return (
    <Navbar bg="light" expand="lg">
      <Container fluid>
        <Navbar.Brand ><Link to="/"></Link></Navbar.Brand>
        
           <Form className="d-flex">
            
            <Button variant="outline-success" onClick={goHome} >Home</Button>
            <Button variant="outline-success" onClick={goLogin} >LOGIN</Button>
            <Button variant="outline-success" onClick={goRegistration} >Registration</Button>
           
            {/* <Button variant="outline-success"><Nav.Link><Link to="/Login">Login</Link></Nav.Link></Button> */}
          </Form> 
      </Container>
    </Navbar>
  );
}

export default HomeNave;