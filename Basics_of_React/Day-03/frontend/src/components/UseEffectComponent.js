import React, { useEffect,useState } from 'react'

export default function UseEffectComponent() {

    const suggestions = ["maxHub",'laptop','Commando','car'];

    const [recommendation,setRecommendation] = useState([]);
    const [search,setSearch] = useState("");
    
    useEffect(()=>{

        setRecommendation(suggestions.filter((element)=>element.includes(search)));
        // conso le.log('Inside use effect');
    },[search]); // useEffect(Action,dependency)

    return (
    <div>
        <input value={search} onChange={(e)=>setSearch(e.target.value)}></input>
        {
            recommendation.map((rec,index)=>(<div key={index}>{index}{rec}</div>))
        }
    </div>
  )
}
