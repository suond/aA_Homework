import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';


// const addLoggingToDispatch = (store) => {
//   const dispatch = store.dispatch;
//   return (action) => {
//     console.log(store.getState());
//     console.log(action);
//     dispatch(action);
//     console.log(store.getState());
//   }
// }

// const addLoggingToDispatch = store => next => action => {
//   // your code here
//   next(action);
// }

// const applyMiddlewares = (store, middleware) => {
//   let dispatch = store.dispatch;
//   middleware.forEach(mid => {
//     dispatch = middleware(store)(dispatch);
//   });
//   return Object.assign({}, store, { dispatch });
// }



document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});
