require './model/label'
class App
  attr_reader :genres, :authors, :labels

  def initialize
    @genres = []
    @authors = []
    @labels = []
  end

  def populate_app
    labels = [Label.new(title: 'Drama', color: 'red'), Label.new(title: 'Fantasy', color: 'green')]
    labels.each { |label| @labels.push(label) }
  end
  def add_book
    puts 'Please enter the publisher name?'
    publisher = gets.chomp
    puts 'Please enter the cover state of the book?'
    cover_state = gets.chomp
    archived = y_n { 'is it archived?:[Y or N]' }
    puts 'Please enter publish date (yyyy/mm/dd):'
    publish_date = gets.chomp
    puts 'Select a label for the book from the following list:'
    @label.each_with_index { |label, index| puts "[#{index}] #{label.title}" }
    index = gets.chomp.to_i
    @label[index].add_items(Book.new(Random.rand(1..10_000), archived, publish_date, publisher, cover_state))
    puts 'Book created succesfully!'
  end
  def add_genre(item)
    # @genre.add_item(item)
  end

  def add_author(item)
    # @author.add_item(item)
  end

  # Label part
  def add_label(item)
    @labels.add_item(item)
  end

  def list_labels
    @labels.each_with_index do |label, index|
      puts "#{index}. [#{label.class}] - Title: #{label.title}, Color: #{label.color}"
    end
  end
end
