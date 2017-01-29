var React = require('react');
var DayName = require ("./DayName");
var Row = require ("./Row");
import TimePicker from 'material-ui/TimePicker';

var WeekDays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
var Data = ["1:00", "2:00", "3:00", "4:00", "5:00", "6:00", "7:00", "8:00", "9:00", "10:00", "11:00", "12:00"
            , "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00", "21:00", "22:00", "23:00", "24:00"];

var dataSet = new Set([]);
var  handleChange = function (set){
    dataSet = set;
}


var Calender = React.createClass({
  send: function (e) {
    console.log(dataSet);
    //this.props.socket.emit("send", dataSet);
  },
  
  render: function () {

    return (
      <div>
      
      <table>
        {WeekDays.map(function (d) {
          return <DayName day={d} /> ;
      })}
      
        {Data.map(function (d) {
            return (
                <Row data={d} hand={handleChange}/>
              );
        })}
      </table>
      <button onClick={this.send}> SEND </button>
      </div>
    );
  }

});

module.exports = Calender;