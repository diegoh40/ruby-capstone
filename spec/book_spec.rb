require_relative 'book'

RSpec.describe Book do
  before :each do
    @book = Book.new(4846, true, '2013/03/12', 'edith', 'oga')
  end

  it 'Create an instance of the book object' do
    expect(@book).to be_an_instance_of(Book)
  end

  it 'To be 1 kind on the Item' do
    expect(@book).to be_kind_of(Item)
  end

  it 'Add label to a book' do
    label = Label.new(3, 'Classicals', 'Blue')
    label.add_item(@book)
    expect(@book.label.color).to be == 'Blue'
  end

  it 'creates a JSON string' do
    label = Label.new(3, 'Classicals', 'Blue')
    label.add_item(@book)
    json = JSON.generate(@book)
    expect(json).to be == '{"json_class":"Book","data":[2022,true,"2013/03/12","Edith","oga"]}'
  end

  it 'creates instance from JSON string' do
    json = '{"json_class":"Book","data":[2022,true,"2013/03/12","Edith","oga"]}'
    new_book = JSON.parse(json, create_additions: true)
    expect(new_book).to be_an_instance_of(Book)
  end
end
