require	"pry"

class Temperature
	
	def c_to_f(degree_c)
		f = (degree_c * 1.8) + 32
	end
 
 	def f_to_c(degree_f)
 		c = (degree_f - 32) / 1.8
 	end
# this is the end for the coversions class
end


class Distance
	
	def m_to_km(distance_m)
		km = distance_m / 0.62137
	end

	def km_to_m(distance_km)
		m = distance_km * 0.62137
	end

# this is the end for the coversions class
end


class Mass

	def pounds_to(mass_lb)
		kg = mass_lb * 0.45359237
		st = mass_lb / 14
	end

	def stones_to(mass_st)
		kg2 = mass_st / 0.15747
		lbs2 = mass_st * 14
	end

	def kilograms_to(mass_kg)
		lbs3 = mass_kg / 0.45359237 
		st3 = mass_kg * 0.15747
	end

# this is the end for the coversions class
end
