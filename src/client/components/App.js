import React, { Component } from 'react';
import logo from './../logo.svg';
import './App.scss';
var Calender = require('./Calender');

export default
class App extends Component {
  render() {
    return (
          <Calender />
    );
  }
}
