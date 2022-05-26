require 'sinatra'
require 'json'

get '/' do
  @page_title = 'Home'
  @page_id = 'index.html'
  erb :'index.html'
end

get '/hello/:name', :provides => :json do
  { greeting: "Hello #{params['name']}!" }.to_json
end
