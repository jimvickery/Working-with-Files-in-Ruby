def create_car_hash
	car_models = File.readlines("car_models.txt")
	car_makes = File.readlines("car_makes.txt")
	car_hash = Hash.new
	makes_array = car_makes
	models_array = car_models
	makes_array.each do |make|
		make = make.gsub("\n", "")
		car_hash[make] = []
		models_array.each do |model|
			model = model.gsub("\n", "")
			if make[0] == model[0]
				model[0..1] = ""
				car_hash[make].push(model)
			end
		end
	end
	puts car_hash
end

# call method to crate the hash
create_car_hash