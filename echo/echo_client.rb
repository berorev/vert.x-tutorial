require "vertx"
include Vertx

NetClient.new.connect(1234, "localhost") do |err, socket|
  if err
    puts "Failed to connect #{err}"
  else
    socket.data_handler { |data| puts "Echo client received #{data.to_s}" }
    (1..10).each do |i|
      str = "hello #{i}\n"
      puts "Echo client sending #{str}"
      socket.write(Buffer.create_from_str(str))
    end
  end
end
