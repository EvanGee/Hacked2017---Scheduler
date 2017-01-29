var express = require ('express');
var path = require("path");
var app = express();
var server = require('http').createServer(app);
var io = require('socket.io')(server);
var path = require("path");
var logger = require('morgan');
var bodyParser = require('body-parser');
var cookieParser = require('cookie-parser');
var path = require('path');
var session = require('express-session');
var passport = require('passport');
var bcrypt = require('bcrypt');

app.use(express.static(path.join(__dirname, "../build")));

io.on('connection', function(socket){
    
    console.log("hello");

     socket.on("send", function(message) {
        console.log(message);

        fs.open('dataFile.csv', 'wx', (err, fd) => {
        if (err) {
            if (err.code === "EEXIST") {
                console.error('myfile already exists');
                return;
            } else {
                throw err;
            }
        }
        writeMyData(fd);
        });

    	//socket.broadcast.emit("message", message);
    });
});

app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended : false}));
app.use(cookieParser());

app.use(session({
    secret: process.env.SECRET_KEY || 'lkw!z3r32%tpj2)%@__3tj2=o[#@jq38i',
    resave: false,
    saveUninitialized: true
}));

app.use(passport.initialize());
app.use(passport.session());

var routes = require('./routes/web');

//require('./config/passport')(app, passport);


server.listen(3000, () => {
	console.log("Starting Socket App - http://localhost:3000");
});
