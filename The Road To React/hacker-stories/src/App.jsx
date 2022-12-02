
import * as React from 'react'

const useStorageState = (key, initialState) => {
  const [value, setValue] = React.useState(
    localStorage.getItem(key) || initialState
  );

  React.useEffect(() => {
    localStorage.setItem(key, value);
  }, [value, key]);

  return [value, setValue]
}

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

  const [searchTerm, setSearchTerm] = useStorageState('search', 'React');

  const handleSearch = (event) => {
    setSearchTerm(event.target.value);
  };

  const searchedStories = stories.filter(story =>
    story.title.toLowerCase().includes(searchTerm.toLowerCase())
  )

  return (
    <div>
      <h1>My Hacker Stories</h1>

      <InputWithLabel
        id="search"
        label="Search"
        value={searchTerm}
        onInputChange={handleSearch}
        />

      <hr />

      <List list={searchedStories}/>
    </div>
  );
}


const List = ({list}) =>
  (
    <ul>
      {list.map(({objectID, ...item}) =>
        <Item key={objectID} {...item} />
      )}
    </ul>
  );

const Item = ({url, title, author, num_comments, points}) => (
  <li >
    <span>
      <a href={url}>{title} </a>
    </span>
    <span>{author} </span>
    <span>{num_comments} </span>
    <span>{points} </span>
  </li>
);

const InputWithLabel = ({id, label, value, onInputChange, type='text'}) => (
    <>
      <label htmlFor={id}>{label} </label>
      <input id={id} type={type} value={value} onChange={onInputChange} />
    </>
  );


export default App
