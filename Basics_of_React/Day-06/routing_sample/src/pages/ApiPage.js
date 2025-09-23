import React from 'react'
import { useFetch } from '../hook/useFetch'


export default function ApiPage() {
    const[loading,data,error] = useFetch('');
   
    
    
    return (
    <div>Welcome to api page

        {
            loading&& <>Loading</>
        }
        {
            error&& <>{error.message}</>
        }
        {
            data.map((Element)=><div key={Element.id}>{}</div>)
        }
    </div>
  )
}
