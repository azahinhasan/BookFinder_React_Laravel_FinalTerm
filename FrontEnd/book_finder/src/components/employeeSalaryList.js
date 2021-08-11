import React,{useState} from 'react';
import {Route,Switch,withRouter,Redirect} from 'react-router-dom';
import axios from '../hoc/auxx';
import  Classes from './components.css';


const EmployeeSalaryList=()=> {
  return (
    <div className={Classes.App}>
      <p>Heloo</p>
    </div>
  );
}

export default EmployeeSalaryList;
