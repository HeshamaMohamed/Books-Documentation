# The Road to React
## Why this book?
Recently, I started learning React for an ongoing project at my job, I had a hard time reading the documentation, so I thought maybe a book would help at explaining how React works more in depth.

## Review
I started reading the book with an underestimation that I'd finish sooner than I did.
However, life happens. also trying out the code myself while reading takes time, especially when you face configuration issues, etc..

The book is a great introduction to React.
Although the learning curve for it was smooth as I have been reading while working with React already.
However, It has helped me greatly understand lots of React mechanisms, especially the Hooks section.

The Road to React book ends here for me, but the React road is still ongoing.
There are still other topics I haven't dug deep inside such as React Testing and Routing.

## Contents
The book curriculum is divided into 6 sections,
 - **Fundamentals of React**
 - React's Legacy
 - Styling In React
 - **React Maintenance**
 - **Real World React**
 - Deploying a React Application

  I have selected the 3 highlighted sections above to read which will serve my current stage right now.

### Fundamentals of React:
#### Lists in React
  - Learned about how to render lists of objects in React.
  - Learned how React marks and identifies list items by unique keys.
  - When defining lists in React, you should avoid using array indices for keys.
    It could cause performance issues when re-rendering.
    It may also cause actual bugs in the UI whenever the order of the items got changed (re-ordering, appending or removing items)
    Use indices as a last resort if the list does not change its order in any way

#### Meet Another Component
  - Learned about components hierarchy tree (Root, parent, child, leaf)
  - Learned to extract chunks of HTML into separate components.

#### React Component Instantiation
  - Learned how React creates elements internally with the type/props/children via createElement.
  - Learned the difference between React components, elements and instances.
  - Learned about the similarities between React components and JS Classes regarding Instantiation/Declaration.
  - Learned why we shouldn't call a React function component with angle brackets as it doesn't allocate its implementation details (e.g: hooks) inside of it, but in its parent instead. Which gives us hard time using it with conditional rendering

#### React DOM
  - Learned how React's <App> Component is rendered in main.jsx
  - Learned how React inserts its root component (App) into the (div) element with id='root' in index.html
  - Learned about React's StrictMode.

#### React Component Declaration
  - Learned about the different ways to declare React components.
  - You can declare React components with a concise body (omit the curly braces/return statement) if it has no business logic.


#### Handler Function in JSX
  - Learned about Synthetic events in React, which is a wrapper around the browser's native event.
    - Learned why we needed Synthetic events in SPA instead of native events (to prevent some default behaviors of native events e.g: refresh page)
  - Learned about event handlers, inline event handlers, and callback event handlers.
    - Learned how to use inline event handlers to pass the occurring event alongside extra parameters to a function outside of JSX.
    - Learned how to use callback event handlers to make a child component communicate with its parent component.
  - Learned about event bubbling in React.
    - Learned how we can use stopPropagation() to stop event bubbling in some cases if necessary (using them as default will often lead to bugs).
    - Learned about event.target and event.currentTarget.
  - Learned about event capturing.
    - Learned how to use capturing events (e.g: onClickCapture) to listen on the capturing phase before reaching the bubbling phase.

#### React props
  - React Props vs. State
  - How to set/update State from props.
  - How to pass Props from child to parent Component
  - React Props Destructuring/Spreading
  - React's children/rest Props
  - How to pass Components/Functions as Props
  - React's Context API for Prop Drilling

#### React state
  - How to initialize/update states via UseState Hook.
  - State updates re-render the component managing it and all its descendants.
  - useState hooks are initialized with their initial state only when being first rendered, and use the most recent state in subsequent re-renders caused by other state changes.
  - How to use a function in the updater function when the update depends on the previous state. (handling asynchronous state)

#### Callback Handlers in JSX
  - Learned how to make components communicate upwards (child to parent), via callback handlers.

#### Lifting State in React
  - Learned how and when to lift a state up or down.
  - Some quotes from the author I liked that summarize the "when".
    - "Always manage the state at a component level where every component that's interested in it is one that either manages the state or a component below the state managing component."
    - "The state should always be there where all components which depend on the state can read (via props) and update (via callback handler) it."
    - "Lifting state should be used to give components access to all the state they need, but not to more state than they need."

#### React Controlled components
  - Learned how to make react components controlled by synchronizing their value with the state both ways.

#### Props Handling
  - Learned to use Props Destructuring in a function component's function signature when we will use it in the current component.
  - Learned about Nested Destructuring, and how we only need to use them if they improve readability.
  - Learned to use the Spread operator when we want to pass all key/value pairs of an object to a child component.
  - Learned to use the rest operator when we want to split out certain properties from your props object.

#### React Side-Effects
  - React useEffect.
    - Learned about React useEffect Hook and its mechanism.
    - Learned how to use useEffect on every render (mount + update), just on mounting, just on updates, or just once in specific cases.
    - Learned how to clean useEffect effects on unmounting.
  - React useRef
    - Learned about React's useRef mechanism and how similar it is to useState but without the re-rendering mechanism.
    - Learned how to use useRef as instance variables, DOM refs, or callback ref.
    - Learned how to use useRef for read/write operations.
  - React local/session storage
    - Learned how to store/cache/read into/from local/session storage in React.

#### React Custom Hooks
  - Learned how to create a React custom hook by creating a Custom Hook that syncronizes local/session storage with react states.
  - Learned why hooks were introduced to React, and how they were dealing with states/side-effects before via class components.

#### React Fragment
  - Learned how to use React fragments to render multiple top-level DOM elements side by side without a wrapper element.

#### React Reusable Component
  - Learned how to make a React component reusable by abstracting and defining dynamic props to it.

#### React Component Composition
  - Learned how to use component composition via the children props to give you extra control/flexibility over wrapper components.
  - Learned how to achieve component generalization/abstraction via component composition
  - Learned how to achieve dynamic component composition.

#### Imperative React
  - Learned about how React makes things declaratively.
  - Learned how to use React imperatively when necessary (when we can't achieve something declaratively).

#### Inline Handler in JSX
  - Implemented the remove feature of list items via a Dismiss button.
  - Reviewed the "Callback Handlers in JSX" and "Handler Function in JSX" sections

#### React Asynchronous Data
  - Simulated the asynchronous data-fetching behaviour with our sample data to replace it with real fetched data in the incoming sections.

#### React Conditional Rendering
  - Learned and Applied conditional rendering by showing a "Loading" statement if the results aren't fetched yet.
  - Also implemented the same concept by showing "Something went wrong..." in case some error happened.

#### React Advanced State
  - Learned about useReducer Hook and how it is different from useState.
  - Used a useReducer Hook for the list state instead of useState.
  - Moved the list actions (add/remove) to a useReducer Hook.

#### React Impossible States
  - Learned how to update state from props using useState for the initial value, and useEffect for updating it if it changes.
  - Learned about some un-desired cases that occur when we need some kind of state transition between multiple states defined by useState Hooks.
  - Learned how to deal with these cases by combining the multiple states into one useReducer Hook instead of multiple useState hooks.
  - although useReducer Hook is more complex than useState, it is recommended when:
    - Your state is already a complex object in the first place (e.g: non-primitive objects such as Arrays and Objects).
    - You have different states changing behaviors that you want to encapsulate in one place (the reducer function)
    - You have multiple successive useState calls

#### Data Fetching with React
 - Learned how to fetch data asynchronously from API endpoints using browser fetch api.

#### Data Re-fetching in React
 - Refactored the client-side search feature into a server-side search feature by re-fetching data when search text changes.

#### Memoized Functions in React
 - Learned about React's useCallback to memoize functions and React's memo API.
 - Solved a problem of unnecessary re-fetching of data when the search term hasn't changed but the components re-renders
 - Wrapped the re-fetching logic in a Memoized function callback to only re-fetch when the dependency (searchTerm) changes.

#### Explicit Data Fetching in React
  - Solved a problem where the search function (fetching data) occurred with every key input stroke, which would lead to blocking due to the API rate limiter.
  - Introduced a new button with a new state (confirmed search query) to decide upon to search only when it changes (button clicked).

#### Third-Party Libraries in React
  - Learned about the different types of libraries available in the React ecosystem.
  - Learned about Axios library, which is used instead of fetch in case we're dealing with old browsers or testing headless browser environments.
  - Replaced our fetch calls with axios.get;

#### Async/Await in React
  - Refactored our handleFetchStories to use Async/await and try/catch instead of then/catch.

#### Forms in React
  - Learned about different aspects of forms in react:
    - controlled vs uncontrolled (state vs reference)
    - how to submit a form (callback handlers)
    - preventDefault() in React events.
    - how to reset a form (after submitting)
    - dirty fields
    - validations
  - wrapped the InputWithLabel component with a <form> and exported it into a new SearchForm component.

#### React's useContext
  - This section is not included in the book but as an article on the author's website.
  - Learned what is React context, why to use it, how to use it, and when to use it to share state between components without props drilling.
  - Walked through the usage of useContext Hook, with the usage of both stateful and unstateful contexts along with the best practices of it.

### React Maintenance
#### Performance in React
 - Noted that most of the time we wouldn't need optimizations in our web apps as React is fast out of the box.
 - Strict Mode
   - Learned about StrictMode and how it helps us in detecting some things that might be implemented incorrectly in our app, and also how it renders hooks twice at the first rendering of our app.
 - Don't Run on first render
   - Made some hooks skip redundant executing at mounting by creating useRef "isMount" state to keep track of whether this is our first mount in order to decide whether to run the hook code.
 - Don't Re-render if not needed
   - Used React memo to control the re-rendering of descendant components that has huge datasets (e.g: tables) and aren't affected by state updates.
   - Used useCallback to control the re-declaration of handleRemoveStory callback so it is declared only once on mounting and thus not triggering the re-rendering of the descendant component which takes it as argument.
 - Don't rerun expensive computations
   - Created a useCase where we had expensive computations running in our component and we needed it only to re-run when one of its dependencies changes.
   - Used useMemo Hook to trigger the re-running of the computations if only its dependencies change.
 - Learned that we should avoid premature optimizations. These optimizations shouldn't be used by default, as some of these steps might be more expensive than the computations we're trying to avoid, so only use them when necessary (e.g: addressing performance issues).

This section was a huge help! it gave me lots of insights about react app behavior regarding the rendering and re-rendering of components and therefore, performance monitoring/optimization. I have observed such behavior before, but I didn't need to investigate it as it had no side effects or issues with the app's performance.

#### Typescript in React
  - I have skimmed through the section as I am not gonna need to write typescript code for now.
  - This was my first encounter with Typescript after reading about it from time to time. It sure helps a lot in shortening the feedback loop and spotting errors early on. I would like to experience it soon.

#### Testing In React
  - Although I am familiar with testing as I have been testing in RoR for a while, I haven't tried testing in other languages/frameworks.
  - The testing syntax is pretty much the same (describe, expect, and toBe). However, It is sure cleaner in Ruby as JS has got all this redundant extra parenthesis and arrows everywhere.
  - We have used Vitest in the package manager to run our tests, it has got pretty nice features like watching for file changes, etc..

#### Unit Testing: Functions
  - Implemented a unit test for our Reducer function (remove story);

#### Unit Testing: Components
  - Used jsdom library to act as a headless browser for us.
  - This is my first time encountering Front-end testing, it is a little simple till now since we're only testing the existence of elements/handlers/etc in isolated components, but I think it'll get more interesting when it comes to testing multiple components together with states.

#### Integration Testing: Component
  - Implemented integration tests for:
    - Rendering the page
    - Fetching data
    - Removing a story
    - Searching for a specific story
  - I think this kind of testing is better than Unit tests as it uncovers more bugs.

#### Snapshot Testing
 - Implemented snapshot testing for the SearchForm component.
 - This is particularly very useful when you're playing around with the components/elements as it will avoid unintentional changes in the DOM.

#### React Project Structure
 - In this section, we have split our App file components into their dedicated files.
 - There was nothing much to learn here since our app is really small anyways.

This section's code doesn't include the previous section's code (tests).
But I will build on top of it anyway to know if my code breaks.

### Real World React
#### Sorting
 - In this section, we implemented a simple sorting feature for our list by (title/author/points/no. of comments).

#### Reverse Sort
 - In this section, we built on top of our last sort feature.
  We added a reverse sort so when you click the sort button twice, you toggle the normal/reverse sorting.

#### Remember Last Searches
 - In this section, we implemented a feature where we remember the last 5 terms you searched for.

#### Paginated Fetch
 - In this section, we tacked the task of creating a paginated fetch for our list.
