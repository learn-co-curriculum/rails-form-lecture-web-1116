# Faker Gem

10.times do
  Song.create(title: Faker::Hipster.sentence(rand(1..2)))
end

10.times do
  Artist.create(name: Faker::Superhero.name)
end

music_genres = ["Hip Hop", "Country", "Electronic", "Pop", "Rock", "Classical"]

10.times do
  Genre.create(name: music_genres[rand(music_genres.length)])
end

Song.all.each do |song|
  3.times do
    artist = Artist.find(rand(1..10))
    genre = Genre.find(rand(1..10))

    song.artists << artist
    song.genres << genre
    song.save
  end
end
