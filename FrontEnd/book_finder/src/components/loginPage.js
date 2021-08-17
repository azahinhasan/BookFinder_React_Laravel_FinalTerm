import React,{useState,useEffect} from 'react';
import {Route,useHistory,withRouter,Redirect} from 'react-router-dom';
import axios from '../hoc/auxx';
import  Classes from './components.css';

const Login=()=> {

   const [data,setData]=useState([]);
   const [Email,setEmail]=useState('');
   const [Password,setPass]=useState('');
   const [msg,setMsg]=useState('');
   const history = useHistory();
   useEffect(() => {
     // loadData();

   }, []);


   const login=()=>{
      axios.post('/login',{Email,Password})
         .then(r=>{
            //console.log(r.data);

            localStorage.setItem('Email',r.data.Email);
            localStorage.setItem('ID',r.data.ID);
            localStorage.setItem('Rank',r.data.Rank);



            if(r.data.msg=='OK'){
               setMsg('');
               localStorage.setItem('AccountvaVlidity',true);
               
               window.location.reload();
            }else{
               localStorage.setItem('AccountvaVlidity',false);
               setMsg(r.data.msg);
            }
            
         })
         .catch(e=>{
            console.log(e);
         })
   }


  return (
    <div className={Classes.App}>
      <h3>LogIn</h3>

      <table style={{width:'240px'}}>
         <tr>
            <td style={{fontWeight:'bold'}}>Login</td>
            <td><input type="email" onChange={e=>setEmail(e.target.value)}/></td>
         </tr>
         <tr>
            <td style={{fontWeight:'bold'}}>Password</td>
            <td><input type="password" onChange={e=>setPass(e.target.value)}/></td>
         </tr>
         <tr>
            <td></td>
            <td>
               <div style={{color:'red'}}>{msg}</div>
               <button onClick={()=>login()}>LOGIN</button>
            </td>
         </tr>
      </table>
     
      
    </div>
  );
}

export default Login;
