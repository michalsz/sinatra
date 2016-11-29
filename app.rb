require 'sinatra'
require 'json'

get '/hello/:name', :provides => :json do
  { greeting: "Hello #{params['name']}!" }.to_json
end
