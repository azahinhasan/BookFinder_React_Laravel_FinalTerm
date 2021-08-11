import React,{useState,useEffect} from 'react';
import {Route,Switch,withRouter,Redirect} from 'react-router-dom';
import axios from '../hoc/auxx';
import  Classes from './components.css';


const EmployeeSalaryList=()=> {

   const [data,setData]=useState([]);

   useEffect(() => {
      loadData();

   }, []);


   const loadData=()=>{
      axios.get('/emplpyee/salaryList')
         .then(r=>{
            console.log(r.data)
            setData(r.data);
         })
         .catch(e=>{
            console.log(e);
         })
   }


  return (
    <div className={Classes.App}>
      <h3>Salary List</h3>
    </div>
  );
}

export default EmployeeSalaryList;
