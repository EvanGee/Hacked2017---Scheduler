import React from 'react';
import RaisedButton from 'material-ui/RaisedButton';


export default class Button extends React.Component {


  navagate () {
    console.log(this.props.name);
    //this.props.history.pushState.bind(null, "/" + nave);
  }

  render() {
    return (
      <RaisedButton label={this.props.name}></ RaisedButton>
    );
  }
}
