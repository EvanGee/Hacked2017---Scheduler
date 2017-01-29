var React = require('react');
var Day = require('./Day');
var WeekDays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
var setDays = new Set([]);
var Row = React.createClass({
    getInitialState: function () {
        return { row: []};
    },

    handleChange : function (state) {
        setDays.add(state);
        this.props.hand(setDays);
    },

    renderRow : function(e) {

        for (let i = 0; i < 7; i++) {
            this.state.row.push(<Day data={this.props.data} date={WeekDays[i]} handler={this.handleChange}/>);
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