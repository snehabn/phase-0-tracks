# Create a compiler that logs books that have been read by user or suggests new books
# that the user can read.
# List of books can then be sorted and returned out based on Author, year published,
# Title, genre, and rating.


#require gems

require 'sqlite3'
require 'faker'

# create a SQLite 3 database to log books

db = SQLite3::Database.new("books.db")
rating = SQLite3::Database.new("rating.db")

#save results within databases to a hash
db.results_as_hash = true
rating.results_as_hash = true

#create a table within the db
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    book_name VARCHAR(255),
    year_pubished INT,
    genre VARCHAR(255),
    author VARCHAR(255),
    read VARCHAR(225),
    rating_id INT,
    FOREIGN KEY (rating_id) REFERENCES rating(id)
  )
SQL

create_rating_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS rating(
		id INTEGER PRIMARY KEY,
		rating VARCHAR(255)
	) 
SQL
#create a table for books if it doesn't exist.
db.execute(create_table_cmd)
rating.execute(create_rating_cmd)

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

# # method that updates the user's reading status on book.
# def update_read_entry(db, read, id)
# 	db.execute("UPDATE books SET read=? WHERE id=?", [read, id])
# end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# method that will display current contents of books database
def display_entries(db)
	entries = db.execute("SELECT * FROM books")
	entries.each do |book|
 		puts "Entry #{book['id']} is #{book['book_name']}. It was written by #{book['author']}, in the year #{book['year_pubished']}. Reading status: #{book['read']}."
 		puts "This book belongs to the #{book['genre']} genre."
 		puts "You have rated it a #{book['rating']} out 10."
 		puts
	end
end

# Driver codes to test the methods:

# db.execute("INSERT INTO books (book_name, year_pubished, genre, author, rating, read)
# 		 VALUES (?, ?, ?, ?, ?, ?)", ["Jungle Book", 1897, "Adventure", "Rudyard Kipling", 8, "currently reading"])

# add_entry(db, "Great Expectations", 1899, "Drama", "Charles Dickens", 4, "finished reading")


# update_rating_entry(db, 9, 2)
# update_author_entry(db, "Bob smith", 1)
# update_genre_entry(db, "Horror", 1)
# update_year_published_entry(db, 2016, 2)
# update_book_name_entry(db, "Peter Pan", 1)
# display_entries(db)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



