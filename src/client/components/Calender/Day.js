var React = require('react');

var color = "0xC6C6C6";
var color2 = "lightblue"
var clicked = false;
var day = React.createClass({

    getInitialState: function () {
        return { color: color,
                clicked: false};
    },

    onMouseOver : function (e) {
        if(clicked) {
            this.setState({
                color: color2,
                clicked: true
            });
            
        } else {
            this.setState({
                color: color
            });
        }
        
    },
    onMouseOut : function (e) {
        if(this.state.clicked === false) {
            this.setState({
                color: color,
            });

        } else if (this.state.clicked === true){
            this.setState({
                color: color2,
            });
            this.handleChange();
        }
    },
    onClick : function () {
        if (clicked) 
            clicked = false;
        else 
            clicked = true;

    },

    handleChange : function () {
        if(this.state.color === color2)
            this.props.handler([this.props.date, this.props.data]);
    },

    render: function () {
        return (
                <td style={{background:this.state.color}}
                    onMouseOver={this.onMouseOver}
                    onMouseOut={this.onMouseOut}
                    onClick={this.onClick}>
                    {this.props.data}
                </td>


        );
    }
});

module.exports = day;