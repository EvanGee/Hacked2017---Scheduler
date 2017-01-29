var React = require('react');
var DayName = require ("./DayName");
var Row = require ("./Row");

var WeekDays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
var Data = ["1:00", "2:00", "3:00", "4:00", "5:00", "6:00", "7:00", "8:00", "9:00", "10:00", "11:00", "12:00"];

var Calender = React.createClass({

  render: function () {

    return (

      <table>
        {WeekDays.map(function (d) {
          return <DayName className="tableColumn" day={d} /> ;
      })}
      
      
        {Data.map(function (d) {
            return (
                <Row className="" data={d} />
              );
        })}
      </table>

    );
  }

});

module.exports = Calender;