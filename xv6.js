var stdin_buf = [];

function write(fd, ch) {
  self.postMessage({fd: fd, ch: ch});
}

function read(ch) {
  if (stdin_buf.length > 0) {
    console.log("reading.. buf is ", stdin_buf);
    return stdin_buf.shift();
  } else {
    throw "EAGAIN";
  }
}

self.addEventListener('message', function(e) {
  console.log("received:" + e.data);
  e.data.split("").forEach(function(ch) {
      stdin_buf.push(ch.charCodeAt(0));
  });
  console.log("buf is:");
  console.log(stdin_buf);
}, false);

/*
// In order to watch JS event queue triggerred.
// Each received key event is blocked until this function shows message.
function showJSEventQueueFire() {
  console.log("Event queue is being processed");
  setTimeout(showJSEventQueueFire, 0);
}
setTimeout(showJSEventQueueFire,0);
*/

var Module = {
  preRun: [function() {
    FS.init(read, function(ch) {write("stdout", ch);}, function(ch) {write("stderr", ch)});
  }],
  arguments: ["xv6.img"],
};

importScripts('sim.js');
