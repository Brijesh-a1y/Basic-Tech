import './App.css';
import {useState} from 'react'


function App(){
  const ContainerStyle={
    display:'flex',
    justifyContent:'center',
    alignItems:'center',
    flexDirection:'column',
    height:'50vh'
    
  }

  const [counter,setCounter] = useState(0);

  const buttonHandlerIncrement = ()=>{
    setCounter(prev=>prev+1)
    //setCounter(counter+1)
  }
  
  const buttonHandlerDecrement=()=>{
    setCounter(counter-1);
  }

  return (
    <div style={ContainerStyle}>
      <p style={{fontSize:'100px'}}> {counter}</p>
      <button onClick={buttonHandlerIncrement}>Increment</button>
      <button onClick={buttonHandlerDecrement}>decrement</button>
    </div>
  )
}

export default App;
