
import * as React from 'react'
import axios from 'axios'

const SearchForm = ({
  searchTerm, onSearchInput, onSearchSubmit
}) => (
  <form onSubmit={onSearchSubmit}>
    <InputWithLabel
      id="search"
      label="Search"
      value={searchTerm}
      isFocused
      onInputChange={onSearchInput}
    >
      <strong>Search: </strong>
    </InputWithLabel>

    <button type='submit' disabled={!searchTerm}>
      Submit
    </button>
  </form>
)

const useStorageState = (key, initialState) => {
  const isMounted = React.useRef(false);

  const [value, setValue] = React.useState(
    localStorage.getItem(key) || initialState
  );

  React.useEffect(() => {
    if (!isMounted.current) {
      isMounted.current = true;
    } else {
      console.log('A');
      localStorage.setItem(key, value);
    }
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
const API_ENDPOINT = 'https://hn.algolia.com/api/v1/search?query=';

const storiesReducer = (state, action) => {
  switch (action.type) {
    case 'STORIES_FETCH_INIT':
      return {
        ...state,
        isLoading: true,
        isError: false,
      };
    case 'STORIES_FETCH_SUCCESS':
      return {
        ...state,
        isLoading: false,
        isError: false,
        data: action.payload,
      };
    case 'STORIES_FETCH_ERROR':
      return {
        ...state,
        isLoading: false,
        isError: true,
      };
    case 'REMOVE_STORY':
      return {
        ...state,
        data: state.data.filter(
          story => action.payload.objectID !== story.objectID,
        ),
      };
    default:
      throw new Error();
  }
};

const getSumComments = (stories) => {
  console.log('C');

  return stories.data.reduce(
    (result, value) => result + value.num_comments,
    0
  );
};

const App = () => {

  const [searchTerm, setSearchTerm] = useStorageState('search', '');

  const [url, setUrl] = React.useState(`${API_ENDPOINT}${searchTerm}`)

  const [stories, dispatchStories] = React.useReducer(
    storiesReducer, // reducer function
    { data: [], isLoading: false, isError: false } // initial state
  );

  const handleFetchStories = React.useCallback(async () => {
    dispatchStories({ type: 'STORIES_FETCH_INIT' });

    try {
      const result = await axios.get(url);

      dispatchStories({
        type: 'STORIES_FETCH_SUCCESS',
        payload: result.data.hits,
      });
    } catch {
      dispatchStories({ type: 'STORIES_FETCH_FAILURE' })
    }
  }, [url])

  React.useEffect(() => {
    console.log('How many times do I log?')
    handleFetchStories();
  }, [handleFetchStories]);

  const handleRemoveStory = React.useCallback((item) => {
    dispatchStories({
      type: 'REMOVE_STORY',
      payload: item
    });
  }, []);

  const handleSearchInput = (event) => {
    setSearchTerm(event.target.value);
  };

  const handleSearchSubmit = (event) => {
    setUrl(`${API_ENDPOINT}${searchTerm}`);

    event.preventDefault();
  };

  console.log ('B:App')

  const sumComments = React.useMemo(
    () => getSumComments(stories),
    [stories]
  );

  return (
    <div>
      <h1>My Hacker Stories with {sumComments} comments.</h1>

      <SearchForm
        onSearchInput={handleSearchInput}
        onSearchSubmit={handleSearchSubmit}
        searchTerm={searchTerm}
      />

      <hr />

      {stories.isError && <p>Something went wrong...</p>}

      {stories.isLoading ? (
        <p>Loading...</p>
      ) : (
        <List
          list={stories.data}
          onRemoveItem={handleRemoveStory}
        />
      )}
    </div>
  );
}

const List = React.memo(
  ({ list, onRemoveItem }) =>
    console.log('B:List') || (
    <ul>
      {list.map((item) =>
        <Item
          key={item.objectID}
          item={item}
          onRemoveItem={onRemoveItem}
        />
      )}
    </ul>
    )
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

const InputWithLabel = ({ id, value, onInputChange, type = 'text', children }) => (
  <>
    <label htmlFor={id}>{children}</label>
    <input id={id} type={type} value={value} onChange={onInputChange} />
  </>
);


export default App
