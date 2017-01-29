var db = require('../config/database');
var fs = require('fs');
var jwt = require('jsonwebtoken');

exports.getShiftPeriod = function (req, res, next) {

    db.getConnection(function (err, connection) {

	if (err)
	    throw err;

	else {
	    var queryString =
		"SELECT shifts.ID, Day, TimeStart, TimeEnd FROM shifts, shiftPeriod WHERE" +
		"shiftPeriod.ID = ?";

	    connection.query(queryString, [req.params.id], function (err, results) {

		if (err) {
		    console.error(err);
		    res.status(500);
		}

		else {
		    res.status(200).json({
			data: results
		    });
		}
		
	    });
	}
	
    });
}

exports.addNewShift = function (req, res) {

    db.getConnection(function (err, connection) {

	if (err)
	    throw err;

	else {
	    var queryString =
		"INSERT INTO shifts (Day, TimeStart, TimeEnd, PeriodId) VALUES (?, ?, ?, ?)";

	    connection.query(queryString, [req.body.day,
					   req.body.start,
					   req.body.end,
					   req.params.id],
			     function (err, results) {

		if (err) {
		    console.error(err);
		    res.status(500);
		}

		else {
		    res.status(201);
		}
		
	    });
	}
    });
}


exports.addNewAvailability = function (req, res) {

    db.getConnection(function (err, connection) {

	if (err)
	    throw err;

	else {
	    var queryString =
		"INSERT INTO availability (??, ??, PeriodId, UserId) VALUES (?, ?, ?, ?) " +
		"ON DUPLICATE KEY UPDATE SET ?? = ?, ?? = ? ";

	    var keys = Object.keys(req.body);
	    connection.query(queryString, [
		keys[0],
		keys[1],
		req.body[keys[0]],
		req.body[keys[1]],
		req.params.id,
		req.user.uid,
		keys[0],
		keys[1],
		req.body[keys[0]],
		req.body[keys[1]]
	    ], function (err, results) {

		if (err) {
		    console.error(err);
		    res.status(500);
		}

		else {

		    res.status(201);
		}
	    });

	}
    });
}
