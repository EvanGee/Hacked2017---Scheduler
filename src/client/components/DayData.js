var React = require('react');


var dayData = React.createClass({

  render: function () {

    return (
        <td>
          {this.props.data}
        </td>
    );
  }

});

module.exports = dayData;