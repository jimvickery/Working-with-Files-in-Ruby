require 'yaml'

class Cars

    def read_makes
        puts File.readlines("car_makes.txt")
    end

    def read_models
        puts File.readlines("car_models.txt")
    end

    

end

# c1 = Cars.new
# c1.read_makes
# c1.read_models

File.open("car_models.txt", "r").each do |f|
    puts YAML::load(f)
end
