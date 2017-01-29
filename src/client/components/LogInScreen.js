import React from 'react'
//import {Link} from "react-router"
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import LogInView from './LogInView';
import Button from './Button';
import {Link} from "react-router";
export default React.createClass({  


  render() {
    return (
        <div id = "logInBox">
            <MuiThemeProvider>
                <LogInView /> 
            </MuiThemeProvider>
            <MuiThemeProvider>
                <Link to="Calender">
                    <Button name="login" className= "LogButton"/>
                </Link>
            </MuiThemeProvider>
        </div>
    )
  }
})