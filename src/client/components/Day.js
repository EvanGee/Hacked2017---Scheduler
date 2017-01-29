var React = require('react');


var day = React.createClass({

    onMouseOver : function (e) {
        console.log(this.props.data)
    },

    onClick : function (e) {
        

    },

    render: function () {

        return (
                <td onMouseOver={this.onMouseOver}>
                    {this.props.data}
                </td>
        );
    }

});

module.exports = day;