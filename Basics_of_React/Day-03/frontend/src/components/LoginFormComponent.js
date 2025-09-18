import React, { useState } from 'react'

export default function LoginFormComponent() {

    const[loginState,setLoginState] = useState({
        username:"",
        password:"",
    });
    const onUsernameChangeHandler = (e)=>{
        setLoginState({
            ...loginState,
            username:e.target.value
        })
    };
    const onPasswordChangeHandler = (e)=>{
        setLoginState({
            ...loginState,
            password:e.target.value
        })
    };

    const onSubmitHandler =(e)=>{
        e.preventDefault();
        console.log("Form submitted",e);
    }
  return (
    <>
    WelCome to Login page
    <br/>

    <form onSubmit={onSubmitHandler}>
        <input name='username' type='text' value={loginState.username} onChange={onUsernameChangeHandler}></input>
        
        <br/>
        <input name='password' type='password' value={loginState.password} onChange={onPasswordChangeHandler}></input>
        <br/>
        <button type='submit'>Login</button>
        {/* <button type='reset'>Reset</button> */}



    </form>
    <br/>

    
    </>
  )
}
