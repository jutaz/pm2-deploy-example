const http = require('http');

var meta = {
  count: 0
};

const server = http.createServer((req, res) => {
  var timeout = ~~(Math.random() * 10).toFixed(2)
  meta.count++;
  setTimeout(function () {
    res.end(JSON.stringify({
      headers: req.headers,
      body: req.body,
      method: req.method,
      meta: meta,
      timeout: timeout
    }, null, 4))
  }, timeout)
});

server.listen(process.env.PORT);

process.on('message', (msg) => {
  if (msg === 'shutdown') {
    server.close(() => {
      console.log('Server exitting...');
      process.exit(0);
    })
  }
});
