import { useState } from 'react'
import reactLogo from './assets/react.svg'
import './App.css'

const welcome = {title: 'React', greeting: 'Hey'}
function getTitle(title){
  return title;
}

function App() {
  return (
    <div>
      <h1>{welcome.greeting} {welcome.title}</h1>
      <h1>{getTitle('Hello React')}</h1>

      <label htmlFor="search">Search: </label>
      <input id="search" type="text"/>
    </div>
  )
}

export default App
