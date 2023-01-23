import React, {useState, useEffect} from "react";
import axios from "axios";
import { useNavigate } from 'react-router-dom';


const Registration = ()=>{
    let[token, setToken]= useState("");
    let[type, setType] = useState("");
    let[firstName, setFirstName] = useState("");
    let[lastName, setLastName] = useState("");
    let[userName, setUserName] = useState("");
    let[email, setEmail] = useState("");
    let[dob, setDob] = useState("");
    let[gender, setGender] = useState("");
    let[phoneNumber, setPhoneNumber] = useState("");
    let[address, setAddress] = useState("");
    let[nidNumber, setNidNumber] = useState("");
    let[dlNumber, setDlNumber] = useState("");
    let[password, setPassword] =useState("");
    const navigate = useNavigate();


    const registrationSubmit= ()=>{
        var obj = {type: type, first_name: firstName, last_name: lastName, username: userName, email: email, dob: dob, gender: gender, phone_number: phoneNumber, address: address, nid_number: nidNumber, dl_number: dlNumber, password: password};
        axios.post("http://127.0.0.1:8000/api/registration",obj)
        .then(resp=>{
            var user = resp.data;
            console.log(user);
            alert("Registration Successful");
            navigate('/login');
            // var user = {userId: token.userid, access_token:token.token};
            // localStorage.setItem('user',JSON.stringify(user));
            // console.log(localStorage.getItem('user'));
        }).catch(err=>{
            alert("Please fill all the fields");
            console.log(err);
        });


    }
    return(
        <div className="Auth-form-container">
            <div className="Auth-form">
            
            <form >
            <div className="Auth-form-content">
            <h3 className="Auth-form-title">Create account</h3>
            <div className="form-group mt-3">
            <label>Choose Role</label>
                
                <input type="radio" value="Renter" name="type" onChange={(e)=>setType(e.target.value)} /> Renter
                
                <input type="radio" value="Customer" name="type" onChange={(e)=>setType(e.target.value)} /> Customer
            
            </div>

            <div className="form-group mt-3">
            <label>First Name</label>
            
               <input type="text" placeholder="Enter First Name" className="form-control mt-1" value={firstName} onChange={(e)=>setFirstName(e.target.value)}></input> 
    
            </div>

            <div className="form-group mt-3">
            <label>Last Name</label>
            
               <input type="text" placeholder="Enter Last Name" className="form-control mt-1" value={lastName} onChange={(e)=>setLastName(e.target.value)}></input> 
    
            </div>

            <div className="form-group mt-3">
            <label>Username</label>
            
            <input type="text" placeholder="Enter Username" className="form-control mt-1" value={userName} onChange={(e)=>setUserName(e.target.value)}></input> 
    
            </div>

            <div className="form-group mt-3">
            <label>Email address</label>
                 <input type="text" className="form-control mt-1" placeholder="Enter email" value={email} onChange={(e)=>setEmail(e.target.value)}></input>
            
            </div>


            <div className="form-group mt-3">
            <label>Date of Birth</label>
            <input type="date" className="form-control mt-1" value={dob} onChange={(e)=>setDob(e.target.value)}></input> 
            </div>

            <div className="form-group mt-3">
            <label>Gender</label>
                <input type="radio" value="Male" name="gender" onChange={(e)=>setGender(e.target.value)} /> Male
                <input type="radio" value="Female" name="gender" onChange={(e)=>setGender(e.target.value)} /> Female
                <input type="radio" value="Other" name="gender" onChange={(e)=>setGender(e.target.value)} /> Other
            </div>

            <div className="form-group mt-3">
            <label>Phone Number</label>
            <input type="text" placeholder="Enter Phone Number" className="form-control mt-1" value={phoneNumber} onChange={(e)=>setPhoneNumber(e.target.value)}></input>
            </div>
            
            <div className="form-group mt-3">
            <label>Address</label>
            <input type="text" placeholder="Enter Address" className="form-control mt-1" value={address} onChange={(e)=>setAddress(e.target.value)}></input> 
            </div>

            <div className="form-group mt-3">
            <label>Nid Number</label>
            <input type="text" placeholder="Enter Nid Number" className="form-control mt-1" value={nidNumber} onChange={(e)=>setNidNumber(e.target.value)}></input> 
            </div>

            <div className="form-group mt-3">
            <label>DL Number</label>
            <input type="text" placeholder="Enter Driving License Number" className="form-control mt-1" value={dlNumber} onChange={(e)=>setDlNumber(e.target.value)}></input> 
            </div>

            <div className="form-group mt-3">
            <label>Password</label>
                 <input type="password" placeholder="Enter password" className="form-control mt-1" value={password} onChange={(e)=>setPassword(e.target.value)} required></input>  
            </div>




            </div>
            </form>
            <br/>
            <div className="Auth-form-content">
            <button className="btn btn-primary" onClick={registrationSubmit}>Register</button>
            </div>
            </div>
        </div>

    )
}
export default Registration;