import React from 'react';
import ReactDOM from 'react-dom';
import App from './components/App';
import './index.css';
import {Router, Route, IndexRoute, hashHistory} from "react-router";
import Login from "./components/LogInScreen"
import injectTapEventPlugin from 'react-tap-event-plugin';

    injectTapEventPlugin();
ReactDOM.render(

  <Router history={hashHistory}>
    <Route path="/" component={Login}></Route>
    <Route path="/calender" component={App}></Route>
  </Router>
  ,
  document.getElementById('root')
);
//<App />