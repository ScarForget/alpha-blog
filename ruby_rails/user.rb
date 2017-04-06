class User

	attr_accessor :name, :email
	def initialize(name, email)
		@name = name
		@email = email
	end

	def run
		puts "Hey I'm running"		
	end

end

class Buyer < User
	def run
		puts "I'm not runing i'm a buyer class"
	end
end

class Seller < User

end

class Admin < User

end

user = User.new("Yarien", "aslofacil@gmail.com")
puts "My user's name is #{user.name} and his email is #{user.email}"
user.name = "scarforget"
puts user.email = "aslofacil@gmail.com"
puts "My user new name is #{user.name} and his email is #{user.email}"

buyer1 = Buyer.new("andy", "andy_alamo@gmail.com")
buyer1.run
seller1 = Seller.new("Yarien", "aslofacil@gmail.com")
seller1.run
admin1 = Admin.new("Yarien", "aslofacil@gmail.com")
admin1.run
puts Buyer.ancestors