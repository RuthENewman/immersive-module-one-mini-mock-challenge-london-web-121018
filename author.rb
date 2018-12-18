class Author

@@all = []

attr_accessor :name, :title, :word_count

def initialize(name)
@name = name
@@all << self
end

def self.all
  @@all
end

def books
  Book.all.select {|book| book.author == self }
end

def write_book(title, word_count)
  Book.new(title, self, word_count)
end

def total_words
  running_total = 0
  books.each do |book|
    running_total += book.word_count
  end
running_total
end

def self.most_words
  Author.all.max_by {|author| author.total_words}
end

end
