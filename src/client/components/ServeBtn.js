import RaisedButton from 'material-ui/RaisedButton';

var React = require('react');

var ServeBtn = React.createClass({

    sendToServer : function () {
        //1.0 is 1am 24 hour clock  startime float, endtime float, num of people int;
        this.props.socket.emit("send", "mon,1.0,2.0,3")
        console.log("hello server");
    },

    render: function () {
        return (
            
            <button onClick = {this.sendToServer}></button>

        );
    }

});

module.exports = ServeBtn;