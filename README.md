# websocket_server
A dead simple Rack application, handling websockets. Gives you the basics.

### To start it, fire it up with you preferred server, e.g.:

`puma config.ru -E production -p 9292`

Running the server in any other environment will cause errors, because of unnecessary middlewares being included.
