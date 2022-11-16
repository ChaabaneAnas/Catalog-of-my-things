require 'json'

module Data_manager

  def presist
    jalbums = @albums.map {|album| {on_spotify: album.on_spotify, id: album.id, publish_date:album.publish_date, archived: album.archived }}
    File.write('./data/albums.json', jalbums.to_json)

    jgenre = @genres.map do |genre| {
      id: genre.id, name: genre.name, items: 
      genre.items.map do|item|
        {on_spotify: item.on_spotify, id: item.id, publish_date: item.publish_date, archived: item.archived }
      end }
    end
    File.write('./data/genres.json',jgenre.to_json)
  end 

  def load 
    @albums = JSON.parse(File.read('./data/albums.json'), object_class: OpenStruct)
    @genres = JSON.parse(File.read('./data/genres.json'), object_class: OpenStruct)
  end 
end