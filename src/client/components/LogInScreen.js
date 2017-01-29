import React from 'react'
import {Link} from "react-router"
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import LogInView from './LogInView';
export default React.createClass({
  render() {
    return (
        <div>
            <MuiThemeProvider>
                <LogInView /> 
            </MuiThemeProvider>
            <h1>Some H1</h1>
            <Link to="Calender">to App</Link>
        </div>
    )
  }
})