var React = require('react');


var dayData = React.createClass({

    onMouseOver : function (e) {

    },

    onClick = function (e) {
        

    },

    render: function () {

        return (
            <tr>
                <td onMouseOver={this.onMouseOver}>
                    {this.props.data}
                </td>
                <td onMouseOver={this.onMouseOver}>
                    {this.props.data}
                </td>
                <td onMouseOver={this.onMouseOver}>
                    {this.props.data}
                </td>
                <td onMouseOver={this.onMouseOver}>
                    {this.props.data}
                </td>
                <td onMouseOver={this.onMouseOver}>
                    {this.props.data}
                </td>
                <td onMouseOver={this.onMouseOver}>
                    {this.props.data}
                </td>
                <td onMouseOver={this.onMouseOver}>
                    {this.props.data}
                </td>
            </tr>
        );
    }

});

module.exports = dayData;