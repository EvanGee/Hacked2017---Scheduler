import React, { Component } from 'react';
import logo from './../logo.svg';
import './App.scss';
import io from 'socket.io-client/dist/socket.io.min.js'

var socket = io.connect();
var Calender = require('./Calender');
var ServeBtn = require('./ServeBtn')
export default



class App extends Component {
  render() {
    return (
      <div>
          <Calender />
          <ServeBtn socket={socket}/>
      </div>
    );
  }
}
