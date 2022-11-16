require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new 'Anas', 'good', '2008-11-15'
  end

  it 'The created instances equal Book instance' do
    @book.should be_an_instance_of Book
  end

  it 'The created intance should have a publisher value of' do
    @book.publisher.should eql 'Anas'
  end

  it 'The created intance should have a cover state value of' do
    @book.cover_state.should eql 'good'
  end

  it 'sets the archived attribute on initialization' do
    expect(@book.archived).to eq false
  end
end
