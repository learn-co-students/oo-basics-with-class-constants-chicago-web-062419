class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre
#1.Explicitly define the genre= method, to integrate our class constant into the method
#2.Remove the attr_accessor for :genre since we no longer need to generate a reader AND a writer.
#3.Add an attr_reader for :genre, since we still want Ruby to generate a reader for us.
  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end
 
  # Explicitly define the genre= method, to integrate our class constant into the method
  def genre=(genre)  # create the writer for genre and add the logic for the class CONSTANT
    @genre = genre
    GENRES << genre 
  end

end

# hp = Book.new("harry potter")
# p hp
# hp.genre = "fantasy"
# p hp