import { useEffect, useState } from "react";

const useFetch=(url)=>{

    const[loading,setLoading] = useState(false);
    const[data,setData] = useState(null);
    const[error,setError] = useState(null);

    const getData = async()=>{
        // const data = await axios.get(url,{
        //     headers:{
        //         'Authorization':'bearer <token>'
        //     }
        // })

        try {
            setLoading(true);
            const response = await axios.get(url);
            console.log(response.data);
            setData(response.data)
            
        } catch (error) {
            setError(error);
        }finally{
            setLoading(false);
        }
    }
    useEffect(()=>{getData},[]);
    return [loading,data,error];
}


export {useFetch};