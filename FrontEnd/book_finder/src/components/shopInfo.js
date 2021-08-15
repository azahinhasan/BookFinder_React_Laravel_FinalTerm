import React,{useState,useEffect} from 'react';
import {Route,useHistory,withRouter,Redirect, useParams} from 'react-router-dom';
import axios from '../hoc/auxx';
import  Classes from './components.css';

const ShopInfo=()=> {

   const [d,setData]=useState([]);
   const [validData,setValidData]=useState([]);
   const [search,setSearch]=useState('');
   const [msg,setMsg]=useState('');
   const history = useHistory();
   const {shopID} = useParams();

   useEffect(() => {
      loadData();

   }, []);


   const loadData=()=>{
      axios.get('/shop/details/'+shopID)
         .then(r=>{
            console.log(r.data);
            setData(r.data.shopInfo);
            setValidData(r.data.shopInfoLicence[0]);
            setMsg(r.data.msg);
         })
         .catch(e=>{
            console.log(e);
         })
   }


  return (
    <div className={Classes.App}>
      <h3>Shop Info</h3>


      <table>
         <tr>
            <th>#ID</th>
            <th>Shop Name</th>
            <th>Status</th>
            <th>Action</th>
         </tr>

         <tr key={d.Shop_id}>
            <td>{d.Shop_id}</td>
            <td>{d.Shop_Name}</td>
            <td>{d.Shop_Address}</td>
            <td style={{color:'blue',fontWeight:'bold'}}>{d.Shop_Licence}</td>
            <td>{d.Phone_No}</td>
            <td>{d.Verified_Status}</td>
            <td><div onClick={()=>history.push('/ShopInfo/'+d.Shop_id)}>Details</div></td>
         </tr>

      </table>
   
    </div>
  );
}

export default ShopInfo;
