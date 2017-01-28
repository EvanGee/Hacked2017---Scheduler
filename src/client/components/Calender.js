var React = require('react');
var DayName = require ("./DayName");
var DayData = require ("./DayData");

var WeekDays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
var Data = ["1", "2", "3", "4", "5", "6", "7"];

var Calender = React.createClass({

  render: function () {

    return (
      <table>
        {WeekDays.map(function (d) {
          return <DayName className="tableColumn" day={d} /> ;
      })}
      <tr>
        {Data.map(function (d) {
            return <DayData className="tableData" data={d} /> ;
        })}
      </tr>
      </table>

    );
  }





});

module.exports = Calender;