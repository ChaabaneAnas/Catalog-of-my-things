require'spec_helper'

describe MusicAlbum do 
  before(:each) do 
    @album = MusicAlbum.new(true,"2000-09-06")
    @genre = Genre.new("Comedy")

  end

  it'should be an instance of MusicAlbum' do
    expect(@album).to be_instance_of (MusicAlbum)
  end 

  it'can_be_archived should be true' do
    expect(@album.can_be_archived?).to eq(true)
  end 

end