import React, { useState } from 'react'


// const dummyJson={
//     "FirstName":"Ramu",
//     "LastName":"Lal",
//     "Address":{
//         "City":"Noida",
//         "State":"Delhi"
//     }
// }
export default function FormEventComponent() {
    // console.log(dummyJson);
    // console.log(dummyJson.FirstName);
    // console.log(dummyJson["FirstName"]);
    
    const [username,setUsername] = useState("");
    const [password,setPassword] = useState("");



    const onChangeHandler = (event)=>{
        // console.log(event.target.value)
        setUsername(event.target.value)
        console.log(username);
    }    
    const onChangePassword = (event)=>{
        setPassword(event.target.value)
        console.log(username);
    }    
    
    const submit=()=>{
        if(password==123){
            alert("login successfully");
        }
    }

  return (
    <div>
        
        <input type='text' value={username} placeholder={'Enter your name'} onChange={onChangeHandler}></input>    
        <input type='text'  placeholder={'Enter your password'} onChange={onChangePassword}></input>   
        <button onClick={submit}>
            Click Me
            </button> 
    </div>
  )
}
