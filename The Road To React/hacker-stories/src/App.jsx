
import * as React from 'react'



const App = () =>{
  const stories = [
    {
      title: 'React',
      url: 'https://reactjs.org/',
      author: 'Jordan Walke',
      num_comments: 3,
      points: 4,
      objectID: 0,
    },
    {
      title: 'Redux',
      url: 'https://redux.js.org/',
      author: 'Dan Abramov, Andrew Clark',
      num_comments: 2,
      points: 5,
      objectID: 1,
    }
  ]

  const handleSearch = (event) => {
    console.log(event.target.value);
  };

  return (
    <div>
      <h1>My Hacker Stories</h1>

      <Search onSearch={handleSearch}/>

      <hr />

      <List list={stories}/>
    </div>
  );
}


const List = (props) =>
  (
    <ul>
      {props.list.map((item) =>
        <Item item={item}/>
      )}
    </ul>
  );

const Item = (props) => (
  <li key={props.item.objectID}>
    <span>
      <a href={props.item.url}>{props.item.title} </a>
    </span>
    <span>{props.item.author} </span>
    <span>{props.item.num_comments} </span>
    <span>{props.item.author} </span>
  </li>
);

const Search = (props) => {
  const [searchTerm, setSearchTerm] = React.useState('');

  const handleChange = (event) =>{
    setSearchTerm(event.target.value);

    props.onSearch(event)
  }

  return (
    <>
      <label htmlFor="search">Search: </label>
      <input id="search" type="text" value={searchTerm} onChange={handleChange} onBlur={handleChange} />

      <p>
        Searching for <strong>{searchTerm}</strong>
      </p>
    </>
  );
}


export default App
