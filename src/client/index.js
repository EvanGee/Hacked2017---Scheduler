import React from 'react';
import ReactDOM from 'react-dom';
import App from './components/App';
import './index.css';
import {Router, Route, IndexRoute, hashHistory} from "react-router";

ReactDOM.render(
  <Router> 
    <Route history={hashHistory}>
      <Route path="/" component={App}/>
    </Route>
  </Router>
  ,
  document.getElementById('root')
);
//<App />