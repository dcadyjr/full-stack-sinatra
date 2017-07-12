require 'bundler'
Bundler.require

get '/soccer/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Soccer", top_players:['Messi','Ronaldo','Drogba']}.to_json
end

get '/basketball/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Basketball", top_players:['Jordan','Pippen','Rodman']}.to_json
end

get '/football/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Football", top_players:['Peyton','Urlacher','Butkis']}.to_json
end

get '/soccer/view' do
  @sport = {name: "Soccer", top_players:['Messi','Ronaldo','Drogba']}
  erb :sport
end

get '/basketball/view' do
  @sport = {name: "Basketball", top_players:['Jordan','Pippen','Rodman']}
  erb :sport
end

get '/football/view' do
  @sport = {name: "Football", top_players:['Peyton','Urlacher','Butkis']}
  erb :sport
end
