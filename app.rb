require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') {
  erb(:index)
}

get('/coins') {
  @result = params.fetch("money").to_f.coins
  erb(:coins)
}
