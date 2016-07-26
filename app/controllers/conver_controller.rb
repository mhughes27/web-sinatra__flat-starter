require "pry"


MyApp.get "/" do
  erb :"home"
end

MyApp.post "/temperature" do
	@temperature = Temperature.new
	@temp_cel = params[:"celsius"].to_f
	@temp_fah = params[:"fahrenheit"].to_f

	@toCelsius = @temperature.fah_cel(@temp_fah)
	@toFahrenheit = @temperature.cel_fah(@temp_cel)

	erb :"/convert"
end

MyApp.post "/distance" do
	@distance = Distance.new
	@distance_km = params[:kilometers].to_f
	@distance_m = params[:miles].to_f
	
	@toMiles = @distance.km_to_m(@distance_km)
	@toKilometers = @distance.m_to_km(@distance_m)
	
	erb :"/convert"
end

MyApp.post "/mass" do
	@mass = Mass.new
	
	if params[:stones] != "" 
		@mass_st = params[:stones].to_i
		@pounds = @mass.stones_to_lb(@mass_st)
		@kilograms = @mass.stones_to_kg(@mass_st)
	elsif params[:kilograms] != "" 
		@mass_kg = params[:kilograms].to_i
		@pounds = @mass.kilograms_to_lb(@mass_kg)
		@stones = @mass.kilograms_to_st(@mass_kg)
	elsif params[:pounds] != ""
		@mass_lb = params[:pounds].to_i
		@stones = @mass.pounds_to_st(@mass_lb)
		@kilograms = @mass.pounds_to_kg(@mass_lb)
	
	end	

	
	erb :"/convert"
end






