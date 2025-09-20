import React, { useContext } from 'react'
import { Context } from '../App'


export default function UseContextSample() {
    const {username,count,setCount} = useContext(Context);

  return (
    <div>

        Welcome to use context {username }api
    </div>
  )
}
