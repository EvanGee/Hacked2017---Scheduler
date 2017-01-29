var React = require('react');


var header = React.createClass({

  render: function () {

    return (
        <th style={{background:"green"}}>
          {this.props.day}
        </th>
    );
  }





});

module.exports = header;