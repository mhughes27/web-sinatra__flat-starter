require "pry"


MyApp.get "/" do
  erb :"home"
end

MyApp.post "/temperature" do
	@temperature = Temperature.new
	@degree_c = params[:celsius].to_i
	@degree_f = params[:fahrenheit].to_i
	
	@toCelsius = @temperature.f_to_c(@degree_f)
	@toFahrenheit = @temperature.c_to_f(@degree_c)

	erb :"/convert"
end

MyApp.post "/distance" do
	@distance = Distance.new
	@distance_km = params[:kilometers].to_i
	@distance_m = params[:miles].to_i
	
	@toMiles = @distance.km_to_m(@distance_km)
	@toKilometers = @distance.m_to_km(@distance_m)
	
	erb :"/convert"
end

MyApp.post "/mass" do
	@mass = Mass.new
	@mass_kg = params[:kilograms]
	@mass_lb = params[:pounds]
	@mass_st = params[:stones]
	
	erb :"/convert"
end






