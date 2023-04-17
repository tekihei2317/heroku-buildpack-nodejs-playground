const http = require("node:http");

const server = http.createServer((req, res) => {
  res.writeHead(200, {
    "Content-Type": "text/html",
  });
  res.end("<div>Hello, world!</div>");
});

const port = process.env.PORT ?? 3000;
server.listen(port);
console.log(`Server is listening at port ${port}`);
