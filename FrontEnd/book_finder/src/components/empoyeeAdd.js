import React,{useState,useEffect,} from 'react';
import {Route,useHistory,withRouter,Redirect} from 'react-router-dom';

import Classes from './components.css';

import axios  from '../hoc/auxx';

const EmployeeAdd=()=> {

   const [errMsg,setErrMsg]=useState('');

   const history= useHistory();

   const submitHandler=(event)=>{
      history.push('/PrintEmployeeInfo/1');
      //console.log(event.target.propic.files[0]);

      if(event.target.elements.email.value==''||event.target.elements.address.value==''
         ||event.target.elements.name.valu==''||event.target.propic.files[0].name==''){

            setErrMsg('Please Fill-Up the text box');
      }
      else if(event.target.propic.files[0].name!='jpg'){
         setErrMsg('Image should me jpg');
      }
      else{
         axios.post('/emplpyee/add',{
            Email:event.target.elements.email.value,
            Address:event.target.elements.address.value,
            Name:event.target.elements.name.value,
            DOB:event.target.elements.dob.value,
            image:event.target.propic.files[0].name,
            Rank:event.target.elements.rank.value,

         })
         .then(r=>{

            console.log(r.data)

            if(r.data=="OK"){
               history.push('/PrintEmployeeInfo/1');
            }

  
         })
      }

         event.preventDefault();
   }

return (
   <div className={Classes.App}>

      <h2>ADD NEW EMPLOYEE</h2>
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
                  <select name='rank'>
                     <option>Admin</option>
                     <option>Moderator</option>
                  </select>
               </td>
            </tr>
            <tr>
               <td>DOB</td>
               <td><input type='date' name='dob'/></td>
            </tr>
            <tr>
               <td>Address</td>
               <td><input name='address'/></td>
            </tr>
            <tr>
               <td>ProPic</td>
               <td><input type='file'  name='propic'/></td>
            </tr>

         </table>
         <input type='submit' value="Submit"/>
      </form>
      

   </div>
   );
}

export default EmployeeAdd;
