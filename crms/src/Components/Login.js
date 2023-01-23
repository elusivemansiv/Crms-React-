import React, {useState, useEffect} from "react";
import axios from "axios";
import { useNavigate } from 'react-router-dom';
import 'bootstrap/dist/css/bootstrap.min.css'

const Login = ()=>{
    let[token, setToken]= useState("");
    let[email, setEmail] = useState("");
    let[password, setPassword] =useState("");
    const navigate = useNavigate();

    const loginSubmit= ()=>{
        var obj = {email: email, password: password};
        axios.post("http://127.0.0.1:8000/api/login",obj)
        .then(resp=>{
            
            var token = resp.data;
          
            var user = {userId: token.userid,type:token.type,access_token:token.token};
            localStorage.setItem('user',JSON.stringify(user));
            console.log(localStorage.getItem('user'));
            alert("Login Successful");
        
            // navigate.push('/view_car_list');

            if(token.type=="Admin"){
                navigate('/admin_home');
            }
            else if(token.type=="Customer"){
                navigate('/customer_home');
            }
            else if(token.type=="Renter"){
                navigate('/dashboard_renter');
            }
            
        }).catch(err=>{
            alert(err);
            console.log(err);
        });


    }
    return(
        <div className="Auth-form-container">
            <div className="Auth-form">
            
            <form >
            <div className="Auth-form-content">
            <h3 className="Auth-form-title">Log In</h3>
            <div className="form-group mt-3">
            <label>Email address</label>
                 <input type="text" className="form-control mt-1" placeholder="Enter email" value={email} onChange={(e)=>setEmail(e.target.value)}></input>
            
            </div>
            <div className="form-group mt-3">
            <label>Password</label>
                <input type="password" placeholder="Enter password" className="form-control mt-1" value={password} onChange={(e)=>setPassword(e.target.value)}></input>
            </div>
            
            </div>
            </form>
            <br/>
            <div className="Auth-form-content">
            <button  className="btn btn-primary" onClick={loginSubmit}>Login</button>
            </div>
            </div>
        </div>


    

    )
}
export default Login; 