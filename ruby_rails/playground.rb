dial_book = {
	"mirelis suarez" => "786-600-9548",
	"andy alamo" => "765",
	"jose enrique" => "609",
	"daniel garcia" => "987",
	"yarien mendez" => "786-718-3618",
}

def get_city_names(somehash)
	somehash.each {|k, v| puts k}
end

def get_area_code(somehash, key)
	somehash[key]
end

loop do
	print "Quieres buscar el numero de algun conocido? : "

	answer = gets.chomp
	if answer != "si"
		break		
	end
	puts "Cual de estos conocido quieres el numero?"
	puts "\n"
	get_city_names(dial_book)
	print "escribe su nombre aqui: "
	prompt = gets.chomp

	if dial_book.include?(prompt)
		puts "El numero de #{prompt} es #{get_area_code(dial_book, prompt)}"
	else
		puts "no conoces a esta persona"
	end
end
