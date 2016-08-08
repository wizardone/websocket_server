require 'faye/websocket'

Server = ->(env) do
  [200, {}, ['test me']]
end
