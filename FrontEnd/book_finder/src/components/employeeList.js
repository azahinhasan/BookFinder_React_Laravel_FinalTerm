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
           
            setData(r.data);
         })
         .catch(e=>{
            console.log(e);
         })
   }

   const acountAction=(action,id)=>{
      
      if(action=='' || action==null || action==0){
         action='false';
      }

      axios.get('/chnageEmployeeAccess/'+action+'/'+id)
         .then(r=>{
            console.log(r.data, "dd");
            setData(r.data);
         })
   }


  return (
    <div className={Classes.App}>
      <h3>Employee List</h3>

      <table>
         <tr>
            <th>#ID</th>
            <th>Name</th>
            <th>ProPic</th>
            <th>Rank</th>
            <th>BanStatus</th>
            <th>Action</th>
            <th>Disable/Enable</th>
         </tr>
         {data.map(d=>{

            return(
               <tr>
                  <td>{d.ID}</td>
                  <td>{d.Name}</td>
                  <td>{d.ProPic}</td>
                  <td>{d.Rank}</td>
                  <td>{d.BanStatus}</td>
                  <td>
                     <div onClick={()=>acountAction(d.Rank,d.ID)}>{d.Rank=='Admin'?'Demotion':'Promotion'}</div>
                  </td>
                  <td>
                     <div onClick={()=>acountAction(d.BanStatus,d.ID)}>{d.BanStatus=='true'?'Enable':'Disable'}</div>
                  </td>
               </tr>
            )
         
         })}
      </table>
     
      
    </div>
  );
}

export default EmployeeList;
