import React, { Component } from 'react';
import logo from './../logo.svg';
import './App.scss';
import io from 'socket.io-client/dist/socket.io.min.js'
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import  TimePicker from "./TimePicker";


var socket = io.connect();
var Calender = require('./Calender/Calender');
//var ServeBtn = require('./ServeBtn')

export default

class App extends Component {

  render() {
    return (
      <div>
        <Calender socket={socket}/>
      </div>
    );
  }
}

/*     <MuiThemeProvider>
          <TimePicker /> 
      </MuiThemeProvider>
      <ServeBtn socket={socket}/>
      */