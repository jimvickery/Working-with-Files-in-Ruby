
	# method to create car hash
	def create_car_hash
        makes = File.open("car_models.txt")
        models = File.open("car_makes.txt")
		car_hash = Hash.new
		makes_array = makes
		models_array = models
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
    create_car_hash()

    

