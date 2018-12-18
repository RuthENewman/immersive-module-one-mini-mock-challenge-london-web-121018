require 'pry'
require_relative './book'
require_relative './author'

author1 = Author.new("Sally Rooney")
author2 = Author.new("Ian Rankin")
author3 = Author.new("Elif Shafak")

book1 = Book.new("Honour", author3, 340)
book2 = Book.new("Knots and Crosses", author2, 250)
book3 = Book.new("Normal People", author1, 280)
book4 = Book.new("Conversations with Friends", author1, 320)

binding.pry
p 'eof'
