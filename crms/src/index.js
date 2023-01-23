import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import axios from 'axios';
import App from './App';
import reportWebVitals from './reportWebVitals';
import Home from './Components/Home';
import Login from './Components/Login';
import { BrowserRouter as Main, Route, Routes } from 'react-router-dom';
import Registration from './Components/Registration';
import Navbar from 'react-bootstrap/Navbar';
import Logout from './Components/Logout';
import DashboardRenter from './Components/Renter/DashboardRenter';
import HomeNave from './Components/HomeNave';
import Profile from './Components/Renter/Profile';
import ViewCarList from './Components/Renter/ViewCarList';
import Notice from './Components/Renter/Notice';
import AddCar from './Components/Renter/AddNewCar';


var token=null;
if(localStorage.getItem('user')){
  var obj = JSON.parse(localStorage.getItem('user'));
  token = obj.access_token;
}
axios.defaults.headers.common["Authorization"] = token;

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
   <Main>
    
    <HomeNave></HomeNave>
    <Routes>
    <Route exact path="/home"element={<Home/>}/>
    <Route exact path="/login"element={<Login/>}/>
    <Route exact path="/registration" element={<Registration/>}/>
    <Route exact path="/dashboard_renter" element={<DashboardRenter/>}/>
    <Route exact path="/profile" element={<Profile/>}/>
    <Route exact path="/notice" element={<Notice/>}/>
    <Route exact path="/add_new_car" element={<AddCar/>}/>
    <Route exact path="/Carlist" element={<ViewCarList/>}/>
    <Route exact path="/logout" element={<Logout/>}/>
    </Routes>
    
   </Main>

  </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
