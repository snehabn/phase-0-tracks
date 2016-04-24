#require gems

require 'sqlite3'
require 'faker'

# create SQLite 3 database
db = SQLite3::Database.new("books.db")

#save results within database to a hash
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS books(
    id INTEGER PRIMARY KEY,
    book_name VARCHAR(255),
    year_pubished INT
  )
SQL

db.execute(create_table_cmd)

