var page = require('webpage').create();
system = require('system');
var address = system.args[1]; 
// page.open('http://www.ipractice.in/students/new', function() {
page.open(address, function() {
  page.render('public/screen_shots/temp.png');
  phantom.exit();
});


// For reference to pass params

// exec('phantomjs phdemo.js http://google.com', $o, $e); ?>

// var page = require('webpage').create();
// var address = system.args[1]; 
// page.open(address, function () {
//     page.render('output.pdf');
//     phantom.exit();
//  }); 