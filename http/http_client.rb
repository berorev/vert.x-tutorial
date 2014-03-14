require "vertx"
include Vertx

client = HttpClient.new
client.port = 8080
client.host = "localhost"
client.get_now("/") do |resp|
  puts "Got response #{resp.status_code}"
  resp.body_handler do |buffer|
    puts "Got data #{buffer}"
  end
end