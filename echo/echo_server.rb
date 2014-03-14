require "vertx"
include Vertx

NetServer.new.connect_handler do |socket|
  Pump.new(socket, socket).start
end.listen(1234)