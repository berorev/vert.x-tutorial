require "vertx"
include Vertx

HttpServer.new.request_handler do |req|
  req.response.end("<html><body><h1>Hello from vert.x!</h1></body></html>")
end.listen(8080)