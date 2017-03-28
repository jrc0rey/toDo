class HomeController < ApplicationController


get '/list' do

end

post  '/list/json' do
	p '-------------'
	puts params
	response['Access-Control-Allow-Origin'] = '*'
	@items = List.new
	@items.item = params[:item]
	@items.done = params[:done]
	@items.completed_on = params[:completed_on]
	@items.save
	@items.to_json
end

get '/list/json' do
	content_type :json
	response['Access-Control-Allow-Origin'] = '*'
	@item = List.all
	@item.to_json
end

patch '/list/json/:id' do
	@items = List.find(params[:id])
	@items.item = params[:item]
	@items.done = params[:done]
	@items.completed_on = params[:completed_on]
	@items.save 
end

delete '/list/json/:id' do
	@items = List.find(params[:id]).destroy
end






end