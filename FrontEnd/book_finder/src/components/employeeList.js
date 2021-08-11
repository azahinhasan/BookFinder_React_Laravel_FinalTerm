import React,{useState,useEffect} from 'react';
import {Route,Switch,withRouter,Redirect} from 'react-router-dom';
import axios from '../hoc/auxx';
import  Classes from './components.css';

const EmployeeList=()=> {

   const [data,setData]=useState([]);

   useEffect(() => {
      loadData();

   }, []);


   const loadData=()=>{
      axios.get('/emplpyee/list')
         .then(r=>{
            console.log(r.data, "dd");
            setData(r.data);
         })
         .catch(e=>{
            console.log(e);
         })
   }


  return (
    <div className={Classes.App}>
      <p>LIST</p>

      <table>
         <tr>
            <th>#ID</th>
            <th>Name</th>
            <th>ProPic</th>
            <th>Rank</th>
            <th>Action</th>
         </tr>
         {data.map(d=>{

            return(
               <tr>
                  <td>{d.ID}</td>
                  <td>{d.Name}</td>
                  <td>{d.ProPic}</td>
                  <td>{d.Rank}</td>
                  <td>Promotion</td>
               </tr>
            )
         
         })}
      </table>
     
      
    </div>
  );
}

export default EmployeeList;
