require 'faye/websocket'

Server = ->(env) do
  if Faye::WebSocket.websocket?(env)
    socket = Faye::WebSocket.new(env)

    socket.on(:open) do |event|
      puts 'Opening socket connection...'
    end

    socket.on(:message) do |event|
      puts 'Receiveing data: '
      puts event.data
    end

    socket.on(:close) do |event|
      puts 'Closing socket connection...'
      socket = nil
    end

    socket.rack_response
  else
    [200, {'Content-Type' => 'text/plain'}, ['Not meant to be here']]
  end
end
