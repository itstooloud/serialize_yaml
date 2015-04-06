require 'yaml'

class Dog
	attr_accessor :type, :age
	def initialize(type, age)
		@type = type
		@age = age
		
	end



	def to_s
		puts "Dog, type: #{@type}, age: #{@age}"
	end
end

class Book

	attr_accessor :title, :author
	def initialize(title, author)
		@title = title
		@author = author
	end

	def to_s
		puts "Book, title: #{@title}, author: #{@author}"
		
	end


		
end

class Dogs
	attr_accessor :dogs

	def initialize
		@dogs = []
	end

	def add_dogs
		d = Dog.new("poodle", 3)
		e = Dog.new("shitzu", 2)
		@dogs << [d, e]
	end

	def to_s

		puts "DOGS! #{@dogs}"
		
	end


end

class Serialize

	attr_accessor :output, :library, :dogs

	def initialize
		@output = []
		@library = []
		@dogs = []

	end

	def to_s

		puts "#{@library}"
		
	end



	def make_library

	authors = %w{King Hemingway Faulkner Adams}
	books = ["It", "A Farewell to Arms", "As I Lay Dying", "Hitchhiker's Guide"]

	authors.each_with_index do |a, index|
		@library << Book.new(books[index], a)
	end

	end

	def add_dogs
		d = Dog.new("poodle", 3)
		e = Dog.new("shitzu", 2)
		@dogs << [d, e]
	end



end

=begin

THIS IS THE CREATION OF THE YAML FILE

d = Dogs.new
d.add_dogs
puts d

#dump_this = YAML::dump(d)
yaml_file = File.open("yaml.yml", "w")
#yaml_file.puts dump_this

THIS IS THE INPUT OF THE YAML FILE

yaml_file = File.open("yaml.yml", "r")
r = YAML::load(yaml_file)
puts r
=end

