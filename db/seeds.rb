# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

guitar = Instrument.create(name:"Guitar")

songs = Song.create([{title: 'All Around My Hat'},{title: 'Purple Haze'}, {title: 'Scrapheap Rag'}])

users = User.create([{first_name:'Frank', last_name:'Zappa', email:'frank@zappa.com', password:'letmein'},{first_name:'Keith', last_name:'Douglas', email:'kingofnap@gmail.com', password:'letmein'},{first_name:'Hippy', last_name:'Chick', email:'hippy@chick.com', password:'letmein'}])

SavedSong.create(student_id:1, song:songs.first)
SavedSong.create(student_id:1, song:songs[2]) 

Lesson.create(instrument:guitar, song:songs[2], teacher:users[1], title:'My super lesson')
Lesson.create(instrument:guitar, song:songs[2], teacher:users[0], title:'My other super lesson')
Lesson.create(instrument:guitar, song:songs[0], teacher:users[2], title:'My ok lesson')
