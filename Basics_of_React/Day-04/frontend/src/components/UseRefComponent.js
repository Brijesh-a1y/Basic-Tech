import React from 'react'
import { useRef } from 'react';

export default function UseRefComponent() {
    const inputElement = useRef(null);
    const focusHandler = ()=>{
        inputElement.current.focus();
    }

    return (
    <div>Welcome to use ref hook

    <br/>
    <input ref={inputElement}></input>
    <br/>
    <button onClick={focusHandler}>Focus</button>
    </div>
  )
}
