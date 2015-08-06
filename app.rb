require('sinatra')
require('sinatra/reloader')
require('./app')
require('./lib/coin_combo')
also_reload('./lib/**/*.rb')

get('/') {
  erb(:index)
}
