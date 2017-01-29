var React = require('react');


var clicked = false;
var day = React.createClass({

    getInitialState: function () {
        return { color: "blue",
                clicked: false};
    },

    onMouseOver : function (e) {
        if(clicked) {
            this.setState({
                color: "red",
                clicked: true
            });
        } else {
            this.setState({
                color: "lightblue"
            });

        }
    },
    onMouseOut : function (e) {
        if(this.state.clicked === false) {
            this.setState({
                color: "blue",
            });

        } else if (this.state.clicked === true){
            this.setState({
                color: "red",
            });

        }
    },
    onClick : function () {
        if (clicked) 
            clicked = false;
        else 
            clicked = true;

    },

    render: function () {
        return (
                <td style={{background:this.state.color}}
                    onMouseOver={this.onMouseOver}
                    onMouseOut={this.onMouseOut}
                    onClick={this.onClick}>
                    {this.props.data}
                    {this.props.date}
                </td>


        );
    }
});

module.exports = day;