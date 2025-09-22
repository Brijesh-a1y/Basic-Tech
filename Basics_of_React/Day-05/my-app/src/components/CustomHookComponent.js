import React, { useEffect, useState } from 'react'

// const useFetch = (url)=>{
//     const[data,setData] = useState([]);
//     const[loading,setLoading] = useState(false);
//     const[error,setError] = useState(null);
//     const getData=()=>{
//         setLoading(true);
//         fetch(url)
//         .then(data=>(data.json()))
//         .then(data=>setData(data))
//         .then(data=>console.log(data))
//         .catch(error=>setError(error.messgae))
//         .finally(()=>{console.log('Ended')})
//     }
//     useEffect(getData,[]);
//     return [loading,data,error];
// }
const useFetchJson = (url)=>{
    const[data,setData] = useState([]);
    const[loading,setLoading] = useState(false);
    const[error,setError] = useState(null);
    const getData=()=>{
        setLoading(true);
        fetch(url)
        .then(data=>data.json())
        .then(data=>{
            setData(data)
            console.log(data)
        })
        .catch(error=>setError(error.messgae))
        .finally(()=>{console.log('Ended')})
    }
    useEffect(getData,[]);
    return {loading,data,error};
}

export default function CustomHookComponent() {
    // const[loading,data,error] = useFetch('https://jsonplaceholder.typicode.com/users');
    const{data} = useFetchJson('https://jsonplaceholder.typicode.com/users');
   
    
  return (
    <>
    {/* <button onClick={()=>getData()}>load data</button> */}
    load data

    {
        

        data.map((item)=><div key={item.id}>{item.id}.{item.name}</div>)
    }
    </>
  )
}
