import React,{useState} from 'react';
import {Route,Switch,withRouter,Redirect} from 'react-router-dom';
import Classes from './App.css';

import NavBar from './components/navBar'
import EmployeeList from './components/employeeList';
import EmployeeSalaryList from './components/employeeSalaryList';
import EchoStat from './components/earningStatics';
import EmployeeAdd from './components/empoyeeAdd';
import ReportList from './components/reportList';
import UserInfo from './components/userInfo';

const App=()=> {
  return (
    <div className={Classes.App}>

      <NavBar/>

      <Switch>
        <Route path="/EmployeeSalaryList" component={EmployeeSalaryList}/>
          <Route path="/EmployeeList" component={EmployeeList}/>
          <Route path="/EchoStatics" component={EchoStat}/>
          <Route path="/EmployeeAdd" component={EmployeeAdd}/>
          <Route path="/ReportList" component={ReportList}/>
          <Route path="/UserInfo/:id" component={UserInfo}/>
          <Redirect to="/EmployeeList"/>
      </Switch>

    </div>
  );
}

export default App;
