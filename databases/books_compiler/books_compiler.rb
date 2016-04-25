# Create a compiler that logs books that have been read by user or suggests new books
# that the user can read.
# List of books can then be sorted and returned out based on Author, year published,
# Title, genre, and rating.


#require gems

require 'sqlite3'


# create a SQLite 3 database to log books

db = SQLite3::Database.new("books.db")

#save results within databases to a hash
db.results_as_hash = true


#create a table within the db
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    book_name VARCHAR(255),
    year_pubished DATE,
    genre VARCHAR(255),
    author VARCHAR(255),
    read INT,
    rating REAL
  )
SQL

#create a table for books if it doesn't exist.
db.execute(create_table_cmd)

# method that will add book to database
def add_entry(db, book_name, year_pubished, genre, author, rating, read)
	db.execute("INSERT INTO books (book_name, year_pubished, genre, author, rating, read) VALUES (?, ?, ?, ?, ?, ?)", [book_name, year_pubished, genre, author, rating, read])
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# method that updates book's name
def update_book_name_entry(db, book_name, id)
	db.execute("UPDATE books SET book_name=? WHERE id=?", [book_name, id])
end

# method that updates the year publihsed
def update_year_published_entry(db, year_pubished, id)
	db.execute("UPDATE books SET year_pubished=? WHERE id=?", [year_pubished, id])
end

# method that updates the genre
def update_genre_entry(db, genre, id)
	db.execute("UPDATE books SET genre=? WHERE id=?", [genre, id])
end

# method that updates the author name
def update_author_entry(db, author, id)
	db.execute("UPDATE books SET author=? WHERE id=?", [author, id])
end

# method that updates the book's rating
def update_rating_entry(db, rating, id)
	db.execute("UPDATE books SET rating=? WHERE id=?", [rating, id])
end

# method that updates the reader's progress
def update_pages_entry(db, read, id)
	db.execute("UPDATE books SET read=? WHERE id=?", [read, id])
end

# method that deletes an entry
def delete_book(db, book_name)
	db.execute("DELETE FROM books WHERE book_name =?", [book_name])
end

# method that creates an overview of the table
def overview(db)
	overview = db.execute("CREATE VIEW [Your top books!] AS SELECT book_name, author FROM books where rating > 3")
	return overview
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# method that will display current contents of books database
def display_entries(db)
	entries = db.execute("SELECT * FROM books")
	if entries == []
		puts "You have zero logged books!"
		puts
	else
		entries.each do |book|
	 		puts "#{book['id']}. #{book['book_name']} by #{book['author']}"
	 		puts "	Published: #{book['year_pubished']}, Reading status: #{book['read']} pages read."
	 		puts " 	Genre: #{book['genre']}"
	 		puts "	Your rating: #{book['rating']} out 10."
	 		puts
		end
	end
end

# method that will display summarized contents
def summ_contents(db)
	summ_entries = db.execute("SELECT * FROM books")
	if summ_entries == []
		puts "You have zero logged books!"
		puts
	else
		summ_entries.each do |book|
	 		puts "#{book['book_name']}"
		end
	end
end

# Driver codes to test the methods:

# db.execute("INSERT INTO books (book_name, year_pubished, genre, author, rating, read)
# 		 VALUES (?, ?, ?, ?, ?, ?)", ["Jungle Book", 1897, "Adventure", "Rudyard Kipling", 8, "reading"])

# add_entry(db, "Great Expectations", 1899, "Drama", "Charles Dickens", 4, "not yet read")


# update_rating_entry(db, 9, 2)
# update_author_entry(db, "Bob smith", 1)
# update_genre_entry(db, "Horror", 1)
# update_year_published_entry(db, 2016, 2)
# update_book_name_entry(db, "Peter Pan", 1)
# display_entries(db)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# The user should be able to insert new book entries, update existing entries, and view entries by genre.

# ask user how many books they would like to log
puts "Hello and welcome to your book logging app!"
puts

	loop do 

		puts "Please select from the following options:"
		puts "1 - Enter a book into your log."
		puts "2 - Update a current entry."
		puts "3 - Delete an entry."
		puts "4 - View your current log of books."
		puts "5 - Exit the program."
		user_num_entry = gets.chomp.to_i
		puts

		case user_num_entry

		when 1
			puts "How many books would you like to log in today?"
			num_books = gets.chomp.to_i

				i = 1
				num_books.times do

					puts "1. Please enter the title of book #{i}:"
					book_name = gets.chomp
					book_name = book_name.split.map(&:capitalize).join(' ')
					puts

					puts "2. What year was it published? If you do not know the year, please leave blank."
					year_pubished = gets.chomp.to_i
					puts

					puts "3. What is the genre of the book:"
					genre = gets.chomp.capitalize
					puts

					puts "4. Who is the author?"
					author = gets.chomp.capitalize
					author = author.split.map(&:capitalize).join(' ')
					puts

					puts "5. On a scale of 1 to 5 how would you rate this book?"
					rating = gets.chomp.to_i
					puts

					puts "6. How many pages of the book have you completed?"
					read = gets.chomp.to_i
					puts

					add_entry(db, book_name, year_pubished, genre, author, rating, read)

					i += 1
					puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"


				end
				display_entries(db)

		when 2
			puts "Here is your current log:"
			display_entries(db)
			puts
			puts "Please select the number of the book you would like to update."
			book_id = gets.chomp.to_i
			puts
			puts "What field would you like to update?"
			puts "1 - Book Name"
			puts "2 - Published Year"
			puts "3 - Genre"
			puts "4 - Author Name"
			puts "5 - Your Rating"
			puts "6 - Pages Read"
			update_num = gets.chomp.to_i

			case update_num

			when 1
				puts "Please enter new book title:"
				book_name = gets.chomp
				book_name = book_name.split.map(&:capitalize).join(' ')
				id = book_id
				update_book_name_entry(db, book_name, id)
				puts "The revised book name is #{book_name}."

			when 2
				puts "Please enter new published year:"
				year_pubished = gets.chomp.to_i
				id = book_id
				update_year_published_entry(db, year_pubished, id)
				puts "The revised published year is #{year_pubished}."

			when 3
				puts "Please enter new genre for the book:"
				genre = gets.chomp.capitalize
				id = book_id
				update_genre_entry(db, genre, id)
				puts "The revised genre is #{genre}."

			when 4
				puts "Please enter revised author's name:"
				author = gets.chomp
				id = book_id
				author = author.split.map(&:capitalize).join(' ')
				update_author_entry(db, author, id)
				puts "The revised author name is #{author}."

			when 5
				puts "On a scale of 1 to 5, what would you like to change your rating to?"
				rating = gets.chomp.to_f
				id = book_id
				update_rating_entry(db, rating, id)
				puts "Your revised rating is #{rating}."

			when 6
				puts "What page are you currently on in the book?"
				read = gets.chomp.to_i
				id = book_id
				update_pages_entry(db, read, id)
				puts "Your revised current page is #{read}"

			else
				puts "You've selection is invalid."

			end

		when 3
			summ_contents(db)
			puts
			puts "What book would you like to delete?"
			book_name = gets.chomp
			book_name = book_name.split.map(&:capitalize).join(' ')
			delete_book(db, book_name)
			puts
			puts "Here are your remaining books:"
			summ_contents(db)
			puts

		when 4
			display_entries(db)
			

		when 5
			puts
			puts "Thank you for logging your books!"
			puts "Happy reading!!"
			break
		else
			puts "You've entered an invalid selection, please try again."
		end

	end



	

			




