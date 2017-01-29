var React = require('react');
var Day = require('./Day');
var WeekDays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];

var Row = React.createClass({
    getInitialState: function () {
        return { row: []};
    },

    renderRow : function(e) {

        for (let i = 0; i < 7; i++) {
            this.state.row.push(<Day data={this.props.data} date={WeekDays[i]}/>);
        }
    },

    render: function () {
        this.renderRow();
        return (
            <tr> 
                {this.state.row}
            </tr>
        );
    }

});

module.exports = Row;