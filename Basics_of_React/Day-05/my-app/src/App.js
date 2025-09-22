// import { useReducer } from 'react';
import CustomHookComponent from './components/CustomHookComponent';

// const reducer = (state,action)=>{
//   switch (action.type) {
//     case 'inc':
//       return {...state,count:state.count+1};

//     case 'dec':
//       return {...state,count:state.count-1};
//     default:
//       return state;
//   }
// }
function App() {
  // const[state,dispatch] = useReducer(reducer,{count:0});
  return (
    <>
      {/* <div>{state.count}</div>
      <button onClick={()=>{dispatch({type:'inc'})}}>Increment</button>
      <button onClick={()=>{dispatch({type:'dec'})}}>Decrement</button> */}
      <CustomHookComponent></CustomHookComponent>
    </>
  );
}

export default App;
