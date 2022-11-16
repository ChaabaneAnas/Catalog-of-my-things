require'spec_helper'

describe Genre do
  before(:each) do
    @genre = Genre.new("Comedy")
    @item = MusicAlbum.new(true,"1998-02-22")
    @genre.add_item(@item)
  end 

  it'shoud be an instance of Genre class' do 
    expect(@genre).to be_instance_of(Genre)
  end 

  it'genre.name should be equale to "Comedy"' do
    expect(@genre.name).to eq("Comedy")
  end 

  it'genre items size should be 1 ' do 
    expect(@genre.items).to include(@item)
  end 
end 