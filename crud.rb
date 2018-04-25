movies = {
  iron_man: 5, #title, rating
  spider_man: 1,
  coding_movies: 3
  }

loop do
  puts "add 	: to add movie and rating"
  puts "update 	: to update rating of movie"
  puts "display : to display movies and ratings"
  puts "delete 	: to delete movie"
  puts "exit 	: to exit application"
  puts " "
	puts "what options you want to made?: "
	choice = gets.chomp
  choice.downcase!


	case choice
  	when "add"
  		puts "what is the movie title? "
  		title = gets.chomp
  		if movies[title.to_sym].nil?
      	puts "what is the rating of the movie? "
  			rating = gets.chomp
  			movies[title.to_sym] = rating.to_i
  			puts "movies added"
    	else
      	puts  "movie already exist!"
    	end
  	when "update"
  		puts "what is the movie title to update? "
  		title = gets.chomp
  		if movies[title.to_sym].nil?
      	puts "movie is not exist!"
    	else
      	puts "what is the new rating for this movie? "
      	rating = gets.chomp
      	movies[title.to_sym] = rating.to_i
      	puts "movie updated, #{title} with rating #{rating}"
    	end
  	when "display"
  		movies.each do |k,v|
				puts "#{k}: #{v}"
    	end
    when "exit"
    	puts "exiting the application....."
    	break
  	when "delete"
  		puts "what is the movie title to delete? "
  		title = gets.chomp
  		if movies[title.to_sym].nil?
      	puts "movie does not exist!"
    	else
      	movies.delete(title.to_sym)
      	puts "#{title} has been deleted"
    	end
  	else
  		puts "Error!"
	end
  break if choice == "exit"
end