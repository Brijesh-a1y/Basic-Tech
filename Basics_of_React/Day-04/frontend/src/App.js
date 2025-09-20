// import ParentComponent from "./components/ParentComponent";
// import UseRefComponent from "./components/UseRefComponent";

import { createContext, useState } from "react";
import UseContextSample from "./components/UseContextSample";

const Context = createContext();

export {Context};


function App() {
  const[username,setUsername] = useState("Brijesh ");
  const[count,setCount] = useState(0);
  return (
    <>
      {/* <UseRefComponent></UseRefComponent> */}
      {/* <ParentComponent></ParentComponent> */}


      <Context.Provider value={{count,setCount,username,setUsername}}>
        <UseContextSample></UseContextSample>

      </Context.Provider>
    </>
  );
}

export default App;
