
function ButtonComponents() {
  const buttonHandler = ()=>{
      console.log('Hello world');
  }

  return (
    <>
     <button onClick={buttonHandler}>Click Me</button>
    </>
  );
}

export default ButtonComponents;
