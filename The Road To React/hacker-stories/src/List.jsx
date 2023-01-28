import * as React from 'react';
import { SORTS } from './App'
const List = ({ list, onRemoveItem }) => {

  const [sort, setSort] = React.useState('NONE');
  const handleSort = (sortKey) => {
    setSort(sortKey);
  };
  console.log(sort + 'sort')
  const sortFunction = SORTS[sort];
  console.log(sortFunction + 'function')
  const sortedList = sortFunction(list);

  return (
    <ul>
      <li style={{ display: 'flex' }}>
        <span style={{ width: '40%' }}>
          <button type="button" onClick={() => handleSort('TITLE')}>
          Title
          </button>
        </span>
        <span style={{ width: '30%' }}>
          <button type="button" onClick={() => handleSort('AUTHOR')}>
            Author
          </button>
        </span>
        <span style={{ width: '10%' }}>
          <button type="button" onClick={() => handleSort('COMMENTS')}>
            Comments
          </button>
        </span>
        <span style={{ width: '10%' }}>
          <button type="button" onClick={() => handleSort('POINTS')}>
            Points
          </button>
        </span>
        <span style={{ width: '10%' }}>
          <button type="button" onClick={() => handleSort('ACTIONS')}>
            Actions
          </button>
        </span>
      </li>
      {sortedList.map((item) =>
        <Item
          key={item.objectID}
          item={item}
          onRemoveItem={onRemoveItem}
        />
      )}
    </ul>
  );
}

const Item = ({ item, onRemoveItem }) => {
  return (
    <li style={{ display: 'flex' }}>
      <span style={{ width: '40%' }}>
        <a href={item.url}>{item.title} </a>
      </span>
      <span style={{ width: '30%' }}>{item.author} </span>
      <span style={{ width: '10%' }}>{item.num_comments} </span>
      <span style={{ width: '10%' }}>{item.points} </span>
      <span style={{ width: '10%' }}>
        <button type='button' onClick={() => onRemoveItem(item)}>
          Dismiss
        </button>
      </span>
    </li>
  );
};

export { List, Item };
