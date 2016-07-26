require "pry"


MyApp.get "/" do
  erb :"home"
end

MyApp.post "/temperature" do
	@temperature = Temperature.new
	
	@degree_c = params[:celsius].to_i
	@toFahrenheit = @temperature.cel_fah(@degree_c)
	
	@degree_f = params[:fahrenheit].to_i
	@toCelsius = @temperature.fah_cel(@degree_f)


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
	@kg = Mass.new
	@mass_kg = params[:kilograms].to_i
	@pounds = @kg.kilograms_to_lb(@mass_kg)
	@stones = @kg.kilograms_to_st(@mass_kg)

	@lb = Mass.new
	@mass_lb = params[:pounds].to_i
	@stones = @lb.pounds_to_st(@mass_lb)
	@kilograms = @lb.pounds_to_kg(@mass_lb)

	@st = Mass.new
	@mass_st = params[:stones].to_i
	@pounds = @st.stones_to_lb(@mass_st)
	@kilograms = @st.stones_to_kg(@mass_st)
	
	erb :"/convert"
end






