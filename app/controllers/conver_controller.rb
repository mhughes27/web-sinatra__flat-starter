MyApp.get "/" do
  erb :"home"
end

MyApp.post "/convert" do
	
	@degree_c = params[:celsius]
	@degree_f = params[:fahrenheit]
	@distance_m = params[:kilometers]
	@distance_km = params[:miles]
	@mass_kg = params[:kilograms]
	@mass_lb = params[:pounds]
	@mass_st = params[:stones]
	erb :"/convert"
end


# MyApp.get "/weather" do
# 	@city = params[:name]
# 	@weather_info = weatherData(params[:location])

# 	erb :"/weather"
# end
