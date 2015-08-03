# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


songs = Song.create([{title: 'All Around My Hat'},{title: 'Purple Haze'}, {title: 'Scrapheap Rag'}])

users = User.create([{first_name:'Frank', last_name:'Zappa', email:'frank@zappa.com', password:'letmein'},{first_name:'Keith', last_name:'Douglas', email:'kingofnap@gmail.com', password:'letmein'},])

SavedSong.create(student_id:1, song:songs.first)
SavedSong.create(student_id:1, song:songs.last) 
