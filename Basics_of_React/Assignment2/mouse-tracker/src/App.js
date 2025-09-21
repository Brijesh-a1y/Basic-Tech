import { useEffect, useState } from "react";

function App() {
  const[mousePos,setMousePos] = useState({x:0,y:0});
  // const UpdateHandler=(event)=>{
  //   setMousePos({x:event.clientX,y:event.clientY});
  // }
  useEffect(()=>{
    const handleMouseMove = (event)=>{
      setMousePos({x:event.clientX,y:event.clientY});
    };
    window.addEventListener('mousemove',handleMouseMove);
    return()=>{

      window.removeEventListener('mousemove',handleMouseMove);
    }
  },[]);
  return (
    <>
      the mouse position is {mousePos.x},{mousePos.y}
      {/* <button onClick={UpdateHandler}>updatePosition</button> */}
    </>
  );
}

export default App;

