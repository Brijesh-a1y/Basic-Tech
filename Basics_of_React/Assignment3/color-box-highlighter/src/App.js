import { useRef,useState } from "react";

function App() {
  const BoxStyle = {
              width: '50px',
              height: '50px',
              margin:'20px'
  };
  const inputElement1 = useRef(null);
  const inputElement2 = useRef(null);
  const inputElement3 = useRef(null);

  const [count,setCount] = useState(-1);
  
  const focusHandler=()=>{
    // this is 1 way to solve this problem other way is reference
    // if(count%3===0)
    //   inputElement1.current.style.border='2px solid yellow';
    // else 
    //   inputElement1.current.style.border='none';
    
    // if(count%3===1)
    //   inputElement2.current.style.border='2px solid yellow';
    // else 
    //   inputElement2.current.style.border='none';

    // if(count%3===2)
    //   inputElement3.current.style.border='2px solid yellow';
    // else 
    //   inputElement3.current.style.border='none';


    const ref = [inputElement1,inputElement2,inputElement3];

    if(count!==-1){
      console.log(count);
      //none previous
      ref[count].current.style.border='none';
    }
    const nextIndex = (count+1)%3;
    ref[nextIndex].current.style.border = '2px solid yellow';

    setCount(nextIndex);
  }
  return (
    <div>
      <h3>Color Box Heighligher</h3>
    {/* <input ref={inputElement1} placeholder='box1'></input>
    <input ref={inputElement2} placeholder='box2'></input>
    <input ref={inputElement3} placeholder='box3'></input> */}
    <div style={{ display: 'flex' }}>

      <div ref={inputElement1} style={{...BoxStyle,backgroundColor:'red'}}  >  </div>
      <div  ref={inputElement2} style={{...BoxStyle,backgroundColor:'green'}} >  </div>
      <div  ref={inputElement3} style={{...BoxStyle,backgroundColor:'blue'}} >  </div>
    </div>
    <br/>
     <button onClick={focusHandler}>Highlight Next Box</button>
    </div>
  );
}

export default App;
