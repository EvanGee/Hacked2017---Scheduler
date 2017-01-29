var React = require('react');
var day = React.createClass({

    getInitialState: function () {
        return { color: "blue"};
    },

    onMouseOver : function (e) {
         this.setState({
            color: "red"
        });

    },

    onClick : function (e) {
        
        this.setState({background : "red"});
        console.log(this.state.background);

    },


    render: function () {
        return (
                <td style={{background:this.state.color}}
                    onMouseOver={this.onMouseOver}>
                    {this.props.data}
                </td>

        );
    }

});

module.exports = day;