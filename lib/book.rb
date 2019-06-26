class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre

  #create an empty array that will keep track of all the new books genres
  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  def genre=(genre)
    @genre = genre 
    GENRES << genre #this step will shovel the return results of the genre METHOD
  end 

end