MyApp.get "/" do
  erb :"home"
end

MyApp.post "/convert" do
	
	erb :"/convert"
end


# MyApp.get "/weather" do
# 	@city = params[:name]
# 	@weather_info = weatherData(params[:location])

# 	erb :"/weather"
# end
