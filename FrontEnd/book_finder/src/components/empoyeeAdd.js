import React,{useState,useEffect} from 'react';

import Classes from './components.css';

import axios  from '../hoc/auxx';

const EmployeeAdd=()=> {



   const submitHandler=(event)=>{
     // console.log(event.target.elements.propic);
     

      axios.post('/emplpyee/add',{
         Email:event.target.elements.email.value,
         Address:event.target.elements.address.value,
         Name:event.target.elements.name.value,
         DOB:event.target.elements.dob.value,
         image:event.target.elements.propic.value,
         Rank:event.target.elements.rank.value,

      })
         .then(r=>[
            console.log(r.data)
         ])

         event.preventDefault();
   }

return (
   <div className={Classes.App}>

      <form onSubmit={e=>submitHandler(e)}>
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
               <td><input name='dob'/></td>
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
