var React = require('react');


var header = React.createClass({

  render: function () {

    return (
        <th>
          {this.props.day}
        </th>
    );
  }





});

module.exports = header;