require	"pry"

class Temperature
	
	def cel_fah(degree_c)
		return (degree_c * 1.8) + 32
	end
 
 	def fah_cel(degree_f)
 		return (degree_f - 32) / 1.8
 	end
# this is the end for the coversions class
end


class Distance
	
	def m_to_km(distance_m)
		return distance_m / 0.62137
	end

	def km_to_m(distance_km)
		return distance_km * 0.62137
	end

# this is the end for the coversions class
end


class Mass

	def pounds_to_kg(mass_lb)
		return mass_lb * 0.45359237
	end

	def pounds_to_st(mass_lb)
		return mass_lb / 14
	end

	def stones_to_lb(mass_st)
		return mass_st * 14
	end

	def stones_to_kg(mass_st)
		return mass_st / 0.15747
	end

	def kilograms_to_lb(mass_kg)
		return mass_kg / 0.45359237 
	end

	def kilograms_to_st(mass_kg) 
		return mass_kg * 0.15747
	end

# this is the end for the coversions class
end
