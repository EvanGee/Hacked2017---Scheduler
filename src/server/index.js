var express = require ('express');
var path = require("path");
var app = express();
var server = require('http').createServer(app);
var io = require('socket.io')(server);
var path = require("path");

app.use(express.static(path.join(__dirname, "../build")));

io.on('connection', function(socket){
    
    console.log("hello");

     socket.on("send", function(message) {
        console.log(message);
    	//socket.broadcast.emit("message", message);
    });








});
server.listen(3000, () => {
	console.log("Starting Socket App - http://localhost:3000");
});
