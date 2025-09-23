import React from 'react'
import { Link } from 'react-router-dom'

export default function NavBar() {
  return (
    <div>


        <Link to='/'>home</Link> &nbsp;
        <Link to='/about'>about</Link> &nbsp;
        <Link to='/api'>api</Link>
    </div>
  )
}
