import React,{useState} from 'react';
import {Route,Switch,withRouter,Redirect} from 'react-router-dom';
import Classes from './App.css';

import NavBar from './components/navBar';
import HomeNavBar from './components/homeNavbar';

import EmployeeList from './components/employeeList';
import EmployeeSalaryList from './components/employeeSalaryList';
import EchoStat from './components/earningStatics';
import EmployeeAdd from './components/empoyeeAdd';
import ReportList from './components/reportList';
import UserInfo from './components/userInfo';
import PrintEmployeeInfo from './components/printEmployeeInfo';
import ShopList from './components/shopList';
import ShopInfo from './components/shopInfo';
import PieChart from './components/pieChart';
import SubscriptionUserList from './components/subscriptionUserList';


import BookList from './components/bookList';
import Login from './components/loginPage';

const App=()=> {
  return (
    <div className={Classes.App}>

    
   
        {localStorage.getItem('Email')==null && localStorage.getItem('AccountvaVlidity')!=true? 
          <div>
            <HomeNavBar/>
            <Switch>
                <Route path="/Login" component={Login}/>
                <Route path="/BookList" component={BookList}/>
                <Redirect to="/Login"/>
            </Switch>
          </div>
          :
          <div>
            <NavBar/>
            <Switch>
              <Route path="/EmployeeSalaryList" component={EmployeeSalaryList}/>
              <Route path="/EmployeeList" component={EmployeeList}/>
              <Route path="/EchoStatics" component={EchoStat}/>
              <Route path="/EmployeeAdd" component={EmployeeAdd}/>
              <Route path="/ReportList" component={ReportList}/>
              <Route path="/UserInfo/:id" component={UserInfo}/>
              <Route path="/PrintEmployeeInfo/:id" component={PrintEmployeeInfo}/>
              <Route path="/ShopList" component={ShopList}/>
              <Route path="/ShopInfo/:shopID" component={ShopInfo}/>
              <Route path="/PieChart" component={PieChart}/>
              <Route path="/SubscriptionUserList" component={SubscriptionUserList}/>
              <Route path="/BookList" component={BookList}/>
              <Redirect to="/EmployeeList"/>
            </Switch>
          </div>
      
      }


    </div>
  );
}

export default App;
