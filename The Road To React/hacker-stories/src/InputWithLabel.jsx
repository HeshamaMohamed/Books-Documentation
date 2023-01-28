import * as React from 'react';

const InputWithLabel = ({ id, value, onInputChange, type = 'text', children }) => (
  <>
    <label htmlFor={id}>{children}</label>
    <input id={id} type={type} value={value} onChange={onInputChange} />
  </>
);

export { InputWithLabel };
