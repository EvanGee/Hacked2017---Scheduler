var React = require('react');
var Day = require('./Day');




var Row = React.createClass({
    getInitialState: function () {
        return { row: []};
    },

    renderRow : function(e) {

        for (let i = 0; i < 7; i++) {
            this.state.row.push(<Day data= {this.props.data} />);
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