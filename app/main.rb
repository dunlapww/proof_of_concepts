require 'active_record'
require 'pry'
require_relative './models/movie'

def db_configuration
  #generate path to config.yml file
  db_configuration_file = File.join(File.expand_path('..',__FILE__),'..', 'db', 'config.yml')
  
  #convert config.yml to hash
  YAML.load(File.read(db_configuration_file))
end

#establish connection with the development database by calling on that key from the hash
ActiveRecord::Base.establish_connection(db_configuration["development"])

print "Give me the title of the movie: "
title = gets.chomp

print "Give me the director of the movie: "
director = gets.chomp

title = Movie.new(title: title, director: director)
title.save!

puts "Number of movies in your database: #{Movie.count}"
puts "Bye!"