movies = Hash.new
movies["Batman"] = 4
movies["Superman"] = 3
movies["Spiderman"] = 2

puts "What would you like to do?\n
To add a movie type 'add'\n
To update a movie type 'update'\n
To display entries type 'movies'\n
To delete and entry type 'delete'\n
"

choice = gets.chomp

case choice

  when 'add' 
    puts "Please enter the movie title."
    title = gets.chomp
    if !movies[title]
    puts "Please enter a rating of 0 - 4"
     rating = Integer(gets.chomp)
     movies[title.to_sym] = rating.to_i
     puts "#{title} was added with a rating of #{rating}"
    else 
      puts "This movie already exists."
    end
      
  when 'update'
    puts "What movie would you like to update?"
    title = gets.chomp
    if !movies[title]
      puts "This movie doesn't exist!"
    else
      puts "What is the new rating?"
      rating = gets.chomp
      movies[title] = rating.to_i
      puts "#{title} was updated with a rating of #{rating}"
    end
  when 'display'
    movies.each do |movie, rating| puts "#{movie}: #{rating}"
    end
  when 'delete'
    puts "Which title would you like to delete?"
    title = gets.chomp
    if movies[title]
      movies.delete(title.to_sym)
      puts "#{title} has been deleted."
    else
      puts "#{title} does not exist."
    end
  else
    puts "Error!"
end
