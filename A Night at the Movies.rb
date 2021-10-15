movies = { 
        Scary_movie: 5, 
        Black_mirror: 8, 
        Rockie: 3
        }
puts "--Type 'display' to see list "
choice = gets.chomp
case choice
  when "add"
    puts "What movie would you like to add? "
    title = gets.chomp
    puts "What rating does the movie have? "
    rating = gets.chomp
    if movies[title.to_sym].nil?
      movies[title.to_sym] = rating.to_i
    else
      puts "The movie already exists!"
    end
  when "update"
      puts "What movie would you like to update? "
    title = gets.chomp
    if movies[title.to_sym].nil? 
      puts "That movie does not exist."
    else
      puts "What is the new rating? "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end
  when "display"
    movies.each {|title, rating| 
    puts "#{title}: #{rating}"}
  when "delete"
    puts "What movie do you want to delete?"
    title = gets.chomp
    if movies[title].nil?
      puts "#{title} is not in the hash!"
    else
      movies[title].delete
    end
  else
    puts "Command is undefined!"
end
