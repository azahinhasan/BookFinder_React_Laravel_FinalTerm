import React,{useState} from 'react';
import {Route,Switch,withRouter,Redirect} from 'react-router-dom';
import Classes from './App.css';

import EmployeeList from './components/employeeList';
import EmployeeSalaryList from './components/employeeSalaryList';

const App=()=> {
  return (
    <div className={Classes.App}>
      <p>Heloo</p>

      <Switch>
          <Route path="/EmployeeList" component={EmployeeList}/>
          <Route path="/EmployeeSalaryList" component={EmployeeSalaryList}/>
          <Redirect to="/EmployeeList"/>
      </Switch>

    </div>
  );
}

export default App;
