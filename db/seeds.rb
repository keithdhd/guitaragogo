# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

guitar = Instrument.create!(name:"Guitar")

song1 = Song.create!(title: 'All Around My Hat')
song2 = Song.create!(title: 'Purple Haze')
song3 = Song.create!(title: 'Scrapheap Rag')
song4 = Song.create!(title: 'Country Road')

genre1 = song2.genres.create(name:"Blues")
genre1.songs << song3
genre1.songs << song4

genre2 = song4.genres.create(name:"Country")
genre2.songs << song4

users = User.create([{first_name:'Frank', last_name:'Zappa', email:'frank@zappa.com', password:'letmein'},{first_name:'Keith', last_name:'Douglas', email:'kingofnap@gmail.com', password:'letmein'},{first_name:'Hippy', last_name:'Chick', email:'hippy@chick.com', password:'letmein'},{first_name:'James', last_name:'Taylor', email:'james@taylor.com', password:'letmein'}])

SavedSong.create!(student_id:1, song:song1, status:"To Do")
SavedSong.create!(student_id:1, song:song2, status:"Done") 
SavedSong.create!(student_id:3, song:song3, status:"Doing") 

Lesson.create!(instrument:guitar, song:song2, teacher:users[1], title:'My super lesson')
Lesson.create!(instrument:guitar, song:song2, teacher:users[0], title:'My other super lesson')
Lesson.create!(instrument:guitar, song:song1, teacher:users[2], title:'My ok lesson')
Lesson.create!(instrument:guitar, song:song4, teacher:users[3], title:'Country Road', video_url:'mUOxijUToBI')
