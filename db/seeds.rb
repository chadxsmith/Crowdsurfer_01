# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

genre_array = ['House', 'UK Garage', 'Techno']

genre_array.each do |s|
	Genre.create(genre: s)
end

array = ['Chicago', 'Deep', 'French', 'Moonbathon', 'Dubstep', 'Future R&B',
		 'Grime', 'UK Funk', 'Acid', 'Detroit', 'Hard', 'Minimal']

array.each do |s|
	SubGenre.create(sub_genre_names: s)
end
