var React = require('react');

var day = React.createClass({

    getInitialState: function () {
        return { color: "blue"};
    },

    handleChange: function (e) {
        this.props.onMouseOver();
    },

    render: function () {
        return (
                <td style = {{background:this.state.color}}>
                </td>
        );
    }

});

module.exports = day;