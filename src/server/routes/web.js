var express = require('express');
var router = express.Router();
var passport = require('passport');
var expressJwt = require('express-jwt');
var controller = require('../controllers/scheduler-controller');


router.use(expressJwt({
    secret: process.env.SECRET_KEY || 'lkw!z3r32%tpj2)%@__3tj2=o[#@jq38i' ,
    credentialsRequired: false,
    getToken: function fromHeaderOrQuerystring (req) {
	if (req.headers.authorization && req.headers.authorization.split(' ')[0] === 'Bearer') {
	    return req.headers.authorization.split(' ')[1];
	} else if (req.query && req.query.token) {
	    return req.query.token;
	}
	return null;
    }
}));


router.get('/', function(req, res) {
    res.render('home');
});

router.get('/calendar', function(req, res) {
    res.render('calendar', {data: {}});
});

router.get('/calendar/:id', function(req, res) {
    // get data
    res.render('calendar', {data: req.data});
});


router.get('/calendar/add_shift', function(req, res) {
    res.render('add-shift', {data: {}});
});

router.get('/calendar/:id/add_shift', function(req, res) {
    // get data
    res.render('add_shift', {data: req,data});
});

// add new shift
router.post('/calendar/:id', function (req, res) {
    res.redirect('/calendar/'+req.params.id);
});
