var React = require('react');


var day = React.createClass({

    getInitialState: function () {
        return { selection: [],
                 style: {}};
    },

    onMouseDown : function (e) {
        console.log(this.props.data)
        this.onMouseOver();
    },

    onMouseOver : function (e) {
        console.log(this.props.data)

    },

    onClick : function (e) {
        this.state.style.background = "red";
        console.log(this.state.style.background);
        this.render();
    },

    render: function () {
        return (
                <td onMouseOver={this.onMouseOver} 
                onMouseDown={this.onMouseDown} 
                onClick = {this.onClick}
                style = {this.state.style}>
                    {this.props.data}
                </td>
        );
    }

});

module.exports = day;