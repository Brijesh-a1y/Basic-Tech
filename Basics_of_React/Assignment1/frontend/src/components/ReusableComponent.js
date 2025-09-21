import React from 'react'

export default function ReusableComponent({label,onClick}) {
    
  return (
    <>
      <button onClick={onClick}>{label}</button>
    </>
  )
}
