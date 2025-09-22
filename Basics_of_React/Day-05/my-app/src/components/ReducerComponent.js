import React from 'react'
import { useReducer } from 'react';

export default function ReducerComponent() {
    
  const[state,dispatch] = useReducer(reducer,{count:0});
    const reducer = (state,action)=>{
      switch (action.type) {
        case 'inc':
          return {...state,count:state.count+1};
    
        case 'dec':
          return {...state,count:state.count-1};
        default:
          return state;
      }
    }
  return (
    <div>


      <div>{state.count}</div>
      <button onClick={()=>{dispatch({type:'inc'})}}>Increment</button>
      <button onClick={()=>{dispatch({type:'dec'})}}>Decrement</button>

    </div>
  )
}
