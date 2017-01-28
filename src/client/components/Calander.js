const React = require("react");
const Dayz = require("react-day-picker");
const moment = require('moment');
require('moment-range');

var MyComponent = React.createComponent({

    componentWillMount() {
        const date = moment('2011-10-21');
        const events = new Dayz.EventsCollection([
            { content: 'A short event',
              range: moment.range( date.clone(),
                                   date.clone().add(1, 'day') ) },
            { content: 'Two Hours ~ 8-10',
              range: moment.range( date.clone().hour(8),
                                   date.clone().hour(10) ) },
            { content: "A Longer Event",
              range: moment.range( date.clone().subtract(2,'days'),
                                   date.clone().add(8,'days') ) }
        ]);
        this.state({events, date});
    }
    render() {
        return <Dayz
                   display='week'
                   date={this.state.date}
                   events={this.state.events} />
    }

});