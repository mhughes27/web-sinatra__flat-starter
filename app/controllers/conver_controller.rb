require "pry"


MyApp.get "/" do
  erb :"home"
end

MyApp.post "/temperature" do
	@temperature = Temperature.new
	@degree_c = params[:celsius].to_i
	@degree_f = params[:fahrenheit].to_i
		


	erb :"/convert"
end

MyApp.post "/distance" do
	@distance = Distance.new
	@distance_km = params[:kilometers].to_i
	@distance_m = params[:miles].to_i
	
	@tomiles = @distance.km_to_m(@distance_km)
	@tokilometers = @distance.m_to_km(@distance_m)
	
	erb :"/convert"
end

MyApp.post "/mass" do
	@mass = Mass.new
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
