import React,{useState,useEffect,} from 'react';
import {Route,useHistory,withRouter,Redirect} from 'react-router-dom';

import Classes from './components.css';

import axios  from '../hoc/auxx';

const EmployeeAdd=()=> {

   const [errMsg,setErrMsg]=useState('');

   const history= useHistory();

   const submitHandler=(event)=>{

   }

return (
   <div className={Classes.App}>

      <h2>Contact Us</h2>
      <form onSubmit={e=>submitHandler(e)}>
         <div style={{color:'red'}}>{errMsg}</div>
         <br/>
         <table>
            <tr>
               <td>Name</td>
               <td><input name='name'/></td>
            </tr>
            <tr>
               <td>Email</td>
               <td><input name='email'/></td>
            </tr>
            <tr>
               <td>Rank</td>
               <td>
                  <textarea name='msg'>

                  </textarea>
               </td>
            </tr>
         </table>
         <input type='submit' value="Submit"/>
      </form>
      

   </div>
   );
}

export default EmployeeAdd;
