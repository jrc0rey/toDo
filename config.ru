require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/HomeController'

require './models/ListModel'



map('/') {run ApplicationController}
map('/home') {run HomeController}