import React from 'react';
import RaisedButton from 'material-ui/RaisedButton';

import injectTapEventPlugin from 'react-tap-event-plugin';
export default class Button extends React.Component {

  componentWillMount() {
    injectTapEventPlugin();
  }
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
