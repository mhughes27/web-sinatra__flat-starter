require "pry"


MyApp.get "/" do
  erb :"home"
end

MyApp.post "/temperature" do
	@temp1 = Temperature.new
	@degree_c = params[:celsius].to_f
	@toFahrenheit = @temp1.cel_fah(@degree_c)
	
	@temp2 = Temperature.new
	@degree_f = params[:fahrenheit].to_f
	@toCelsius = @temp2.fah_cel(@degree_f)


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






