import React from 'react';
import TextField from 'material-ui/TextField';


export default class TextFieldExampleControlled extends React.Component {

  constructor(props) {
    super(props);

    this.state= {
      name: 'User Name',
      password: "Password"
    };
  }

  handleChange = (event) => {
    this.setState({
      name: event.target.value,
    });
  };

  handleChangePass = (event) => {
    this.setState({
      password: event.target.value,
    });
  }

  render() {
    return (
      <div>
        <TextField
          id="text-field-controlled"
          value={this.state.name}
          onChange={this.handleChange}
        /><br />
        <TextField
          id="text-field-controlled"
          value={this.state.password}
          onChange={this.handleChangePass}
        /><br />
        
      </div>

    );
  }
}