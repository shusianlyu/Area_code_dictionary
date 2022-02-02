dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def get_city_names(somehash)
  somehash.keys
end

def get_area_code(somehash, key)
  somehash[key]
end

loop do
  print "Do you want to lookup an area code based on a city name? (Y/N): "
  answer = gets.chomp
  break if answer.downcase != 'y'
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)
  print "Enter your selection: "
  key = gets.chomp
  if dial_book.include?(key)
    puts "The area code for #{key} is #{get_area_code(dial_book, key)}"
  else
    puts "Your selection is invalid."
  end
end
 