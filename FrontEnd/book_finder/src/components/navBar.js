import React,{useState} from 'react';
import {Route,Switch,withRouter,Link} from 'react-router-dom';
import Classes from './components.css';



const NavBar=()=> {
  return (
    <div className={Classes.NavBar}>
       <div>
         <Link className={Classes.Link} to={{pathname: '/EmployeeList'}}>Employee List</Link>
         <Link className={Classes.Link} to={{pathname: '/EmployeeSalaryList'}}>Employee Salary</Link>
         <Link className={Classes.Link} to={{pathname: '/EmployeeAdd'}}>Add Employee</Link>
         <Link className={Classes.Link} to={{pathname: '/EchoStatics'}}>Economic</Link>

         <Link className={Classes.Link} to={{pathname: '/ReportList'}}>Reports List</Link>
         <Link className={Classes.Link} to={{pathname: '/EchoStatics'}}>Pie Chart</Link>
         <Link className={Classes.Link} to={{pathname: '/ShopList'}}>Shop List</Link>
       </div>
    </div>
  );
}

export default NavBar;
