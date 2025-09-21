
import {useState} from 'react';
import ReusableComponent from './components/ReusableComponent';
function App() {
  const[count,setCount] = useState(0);
  const IncrementHandler=()=>{
    // setCount(prev=>prev+1);
    setCount(count+1);
    console.log(count);
  }
  const DecrementHandler=()=>{
    // setCount(prev=>prev-1);
    setCount(count-1);
    console.log(count);
  }
  
  return (
    <div style={{textAlign:"center"}}>
      
      <br/>
      {count}
      <br/>
      <ReusableComponent label="increment" onClick={IncrementHandler}/>
      <ReusableComponent label="decrement" onClick={DecrementHandler}/>
      
    </div>
  );
}

export default App;
