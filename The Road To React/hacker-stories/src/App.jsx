
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

const initialStories = [
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

const App = () =>{

  const [searchTerm, setSearchTerm] = useStorageState('search', '');
  const [stories, setStories] = React.useState(initialStories)

  const handleRemoveStory = (item) =>{
    const newStories = stories.filter(story => item.objectID !== story.objectID );

    setStories(newStories);
  };

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
        >
        <strong>Search:</strong>
        </InputWithLabel>

      <hr />

      <List list={searchedStories} onRemoveItem={handleRemoveStory} />
    </div>
  );
}


const List = ({ list, onRemoveItem }) =>
  (
    <ul>
      {list.map((item) =>
        <Item
          key={item.objectID}
          item={item}
          onRemoveItem={onRemoveItem}
        />
      )}
    </ul>
  );

const Item = ({ item, onRemoveItem }) => {
  return (
    <li >
      <span>
        <a href={item.url}>{item.title} </a>
      </span>
      <span>{item.author} </span>
      <span>{item.num_comments} </span>
      <span>{item.points} </span>
      <span>
        <button type='button' onClick={() => onRemoveItem(item)}>
          Dismiss
        </button>
      </span>
    </li>
  );
};

const InputWithLabel = ({id, value, onInputChange, type='text', children}) => (
    <>
      <label htmlFor={id}>{children}</label>
      <input id={id} type={type} value={value} onChange={onInputChange} />
    </>
  );


export default App
