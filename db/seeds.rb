# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

ActiveRecord::Base.transaction do
  User.destroy_all
  Video.destroy_all

  user1 = User.create(username: "DemoUser", email: "demo@gmail.com", password: "123456")
  user2 = User.create(username: "Viewtuber", email: "viewtuber@gmail.com", password: "123456")
  user3 = User.create(username: "DankMemes", email: "dankmemes@gmail.com", password: "123456")
  user4 = User.create(username: "AA4Lyfe", email: "aa@gmail.com", password: "123456")
  user5 = User.create(username: "UwU", email: "uwu@gmail.com", password: "123456")
  user6 = User.create(username: "Faker", email: "faker@gmail.com", password: "123456")
  user7 = User.create(username: "Reznick", email: "reznick@gmail.com", password: "123456")
  user8 = User.create(username: "OFWGKTA", email: "ofwgkta@gmail.com", password: "123456")
  user9 = User.create(username: "CatVideos", email: "catvideos@gmail.com", password: "123456")
  user10 = User.create(username: "City", email: "city@gmail.com", password: "123456")
  user11 = User.create(username: "anonymous", email: "anonymous@gmail.com", password: "123456")
  user12 = User.create(username: "BBC Earth", email: "bbcearth@gmail.com", password: "123456")
  user13 = User.create(username: "Nature", email: "nature@gmail.com", password: "123456")
  user14 = User.create(username: "Outdoor Channel", email: "outdoorchannel@gmail.com", password: "123456")



  vid1 = Video.create(
    title: "Ali, the goat", 
    description: "greatest of all time for a reason",
    author_id: user7.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/ali.jpg')
  vid1.thumbnail.attach(io: file, filename: 'ali.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/ali.mp4')
  vid1.video.attach(io: file, filename: 'ali.mp4')

  # vid2 = Video.create(
  #   title: "You have been stopped", 
  #   description: "I like vines",
  #   author_id: user3.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/beenStoppedThumbnail.jpg')
  # vid2.thumbnail.attach(io: file, filename: 'beenStoppedThumbnail.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/beenStopped.mp4')
  # vid2.video.attach(io: file, filename: 'beenStopped.mp4')
  
  # vid3 = Video.create(
  #   title: "Another kermit vine", 
  #   description: "The og muppet",
  #   author_id: user3.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/kermitThumbnail.jpg')
  # vid3.thumbnail.attach(io: file, filename: 'kermitThumbnail.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/kermit.mp4')
  # vid3.video.attach(io: file, filename: 'kermit.mp4')

  # vid4 = Video.create(
  #   title: "Well then", 
  #   description: "d o double g",
  #   author_id: user3.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/snoopThumbnail.jpg')
  # vid4.thumbnail.attach(io: file, filename: 'snoopThumbnail.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/snoop.mp4')
  # vid4.video.attach(io: file, filename: 'snoop.mp4')

  # vid5 = Video.create(
  #   title: "Arian Granda Throws a Chair", 
  #   description: "amazing distance on that yeet",
  #   author_id: user3.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/ariana.jpg')
  # vid5.thumbnail.attach(io: file, filename: 'ariana.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/ariana.mp4')
  # vid5.video.attach(io: file, filename: 'ariana.mp4')

  # vid6 = Video.create(
  #   title: "Genertic Cat Video", 
  #   description: "where did he get the wig",
  #   author_id: user4.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/cat.jpg')
  # vid6.thumbnail.attach(io: file, filename: 'cat.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/cat.mp4')
  # vid6.video.attach(io: file, filename: 'cat.mp4')

  # vid7 = Video.create(
  #   title: "Hannah Montana?", 
  #   description: "It's just how I remembered it was",
  #   author_id: user4.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/hannah.jpg')
  # vid7.thumbnail.attach(io: file, filename: 'hannah.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/hannah.mp4')
  # vid7.video.attach(io: file, filename: 'hannah.mp4')

  # vid8 = Video.create(
  #   title: "Krispy Kreme Time", 
  #   description: "I wonder what the aftermath was",
  #   author_id: user5.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/krispy.jpg')
  # vid8.thumbnail.attach(io: file, filename: 'krispy.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/krispy.mp4')
  # vid8.video.attach(io: file, filename: 'krispy.mp4')

  # vid9 = Video.create(
  #   title: "What is love?", 
  #   description: "Baby don't hurt me",
  #   author_id: user5.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/love.jpg')
  # vid9.thumbnail.attach(io: file, filename: 'love.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/love.mp4')
  # vid9.video.attach(io: file, filename: 'love.mp4')

  # vid10 = Video.create(
  #   title: "Red Consiparcy Theory", 
  #   description: "if you're so smart, EXPLAIN THIS",
  #   author_id: user6.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/red.jpg')
  # vid10.thumbnail.attach(io: file, filename: 'red.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/red.mp4')
  # vid10.video.attach(io: file, filename: 'red.mp4')

  # vid11 = Video.create(
  #   title: "My boi michael j", 
  #   description: "he wants you to stop",
  #   author_id: user8.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/stop.jpg')
  # vid11.thumbnail.attach(io: file, filename: 'stop.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/stop.mp4')
  # vid11.video.attach(io: file, filename: 'stop.mp4')

  # vid12 = Video.create(
  #   title: "Dude drops his taco", 
  #   description: "rip to my homie taco",
  #   author_id: user6.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/taco.jpg')
  # vid12.thumbnail.attach(io: file, filename: 'taco.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/taco.mp4')
  # vid12.video.attach(io: file, filename: 'taco.mp4')

  # vid13 = Video.create(
  #   title: "Perfectly timed scream", 
  #   description: "i wanna try some",
  #   author_id: user7.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/taste.jpg')
  # vid13.thumbnail.attach(io: file, filename: 'taste.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/taste.mp4')
  # vid13.video.attach(io: file, filename: 'taste.mp4')

  # vid14 = Video.create(
  #   title: "Adorable dog", 
  #   description: "what a cutie",
  #   author_id: user2.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/willie.jpg')
  # vid14.thumbnail.attach(io: file, filename: 'willie.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/willie.mp4')
  # vid14.video.attach(io: file, filename: 'willie.mp4')

  # vid15 = Video.create(
  #   title: "I'm Not Finished", 
  #   description: "he's not finished",
  #   author_id: user1.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/tyler.jpg')
  # vid15.thumbnail.attach(io: file, filename: 'tyler.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/tyler.mp4')
  # vid15.video.attach(io: file, filename: 'tyler.mp4')

  vid16 = Video.create(
    title: "People Are Afraid of Technology", 
    description: "Truly terrifying",
    author_id: user1.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/technology.jpg')
  vid16.thumbnail.attach(io: file, filename: 'technology.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/technology.mp4')
  vid16.video.attach(io: file, filename: 'technology.mp4')

  vid17 = Video.create(
    title: "Iron Mike Combos", 
    description: "clips of tyson combos",
    author_id: user7.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/tyson.jpg')
  vid17.thumbnail.attach(io: file, filename: 'tyson.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/tyson.mp4')
  vid17.video.attach(io: file, filename: 'tyson.mp4')

  # vid18 = Video.create(
  #   title: "Screaming Mouse", 
  #   description: "why?",
  #   author_id: user2.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/mouse.jpg')
  # vid18.thumbnail.attach(io: file, filename: 'mouse.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/mouse.mp4')
  # vid18.video.attach(io: file, filename: 'mouse.mp4')

  # vid19 = Video.create(
  #   title: "Arkansas", 
  #   description: "i don't get it either",
  #   author_id: user2.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/arknasas.jpg')
  # vid19.thumbnail.attach(io: file, filename: 'arknasas.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/arkansas.mp4')
  # vid19.video.attach(io: file, filename: 'arkansas.mp4')

  # vid20 = Video.create(
  #   title: "First Day of School", 
  #   description: "LongBeachGriffy",
  #   author_id: user5.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/beach.jpg')
  # vid20.thumbnail.attach(io: file, filename: 'beach.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/beach.mp4')
  # vid20.video.attach(io: file, filename: 'beach.mp4')

  vid21 = Video.create(
    title: "Another Generic Cat Video", 
    description: "not enough cat videos",
    author_id: user9.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/cat2.jpg')
  vid21.thumbnail.attach(io: file, filename: 'cat2.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/cat2.mp4')
  vid21.video.attach(io: file, filename: 'cat2.mp4')

  # vid22 = Video.create(
  #   title: "Insect Introductions", 
  #   description: "CalebCity",
  #   author_id: user10.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/insects.jpg')
  # vid22.thumbnail.attach(io: file, filename: 'insects.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/insects.mp4')
  # vid22.video.attach(io: file, filename: 'insects.mp4')

  vid23 = Video.create(
    title: "App Academy", 
    description: "Wow everyone who goes to App Academy is so good looking. Truly amazing",
    author_id: user4.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/aa.jpg')
  vid23.thumbnail.attach(io: file, filename: 'aa.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/aa.mp4')
  vid23.video.attach(io: file, filename: 'aa.mp4')

  vid24 = Video.create(
    title: "Need more generic cat videos", 
    description: "not enough cats",
    author_id: user11.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/cat3.jpg')
  vid24.thumbnail.attach(io: file, filename: 'cat3.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/cat3.mp4')
  vid24.video.attach(io: file, filename: 'cat3.mp4')

  vid25 = Video.create(
    title: "Iguana vs Snakes", 
    description: "Nature is scary",
    author_id: user11.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/snake.jpg')
  vid25.thumbnail.attach(io: file, filename: 'snake.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/snake.mp4')
  vid25.video.attach(io: file, filename: 'snake.mp4')

  vid26 = Video.create(
    title: "engelwood - crystal dolphin", 
    description: "Doo doo doo doo",
    author_id: user11.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/dolphin.jpg')
  vid26.thumbnail.attach(io: file, filename: 'dolphin.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/dolphin.mp4')
  vid26.video.attach(io: file, filename: 'dolphin.mp4')

  vid27 = Video.create(
    title: "Shawn Wasabi - Marble Soda", 
    description: "What a mashup",
    author_id: user11.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/marble.jpg')
  vid27.thumbnail.attach(io: file, filename: 'marble.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/marble.mp4')
  vid27.video.attach(io: file, filename: 'marble.mp4')

  # vid28 = Video.create(
  #   title: "No pomegranates!", 
  #   description: "no no no no no",
  #   author_id: user11.id
  # )
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/pomegranate.jpg')
  # vid28.thumbnail.attach(io: file, filename: 'pomegranate.jpg')
  # file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/pomegranate.mp4')
  # vid28.video.attach(io: file, filename: 'pomegranate.mp4')

  vid29 = Video.create(
    title: "Ant Clip", 
    description: "ants are cool",
    author_id: user12.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/ant.jpg')
  vid29.thumbnail.attach(io: file, filename: 'ant.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/ant.mp4')
  vid29.video.attach(io: file, filename: 'ant.mp4')

  vid30 = Video.create(
    title: "Bear Interaction", 
    description: "bears are amazing",
    author_id: user14.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/bear.jpg')
  vid30.thumbnail.attach(io: file, filename: 'bear.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/bear.mp4')
  vid30.video.attach(io: file, filename: 'bear.mp4')

  vid31 = Video.create(
    title: "chilly cat", 
    description: "never enough cat videos",
    author_id: user13.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/cat4.jpg')
  vid31.thumbnail.attach(io: file, filename: 'cat4.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/cat4.mp4')
  vid31.video.attach(io: file, filename: 'cat4.mp4')

  vid32 = Video.create(
    title: "some bird", 
    description: "nice visuals",
    author_id: user13.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/bird.jpg')
  vid32.thumbnail.attach(io: file, filename: 'bird.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/bird.mp4')
  vid32.video.attach(io: file, filename: 'bird.mp4')

  vid33 = Video.create(
    title: "Adorable Video", 
    description: "hamsters need to eat too",
    author_id: user12.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/hamster.jpg')
  vid33.thumbnail.attach(io: file, filename: 'hamster.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/hamster.mp4')
  vid33.video.attach(io: file, filename: 'hamster.mp4')

  vid34 = Video.create(
    title: "Unique Monkey", 
    description: "never seen a monkey like this before",
    author_id: user11.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/monkey.jpg')
  vid34.thumbnail.attach(io: file, filename: 'monkey.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/monkey.mp4')
  vid34.video.attach(io: file, filename: 'monkey.mp4')

  vid35 = Video.create(
    title: "Nature Clips", 
    description: "beautiful",
    author_id: user13.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/nature.jpg')
  vid35.thumbnail.attach(io: file, filename: 'nature.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/nature.mp4')
  vid35.video.attach(io: file, filename: 'nature.mp4')

  vid36 = Video.create(
    title: "In The Ocean...", 
    description: "octopus are cool",
    author_id: user12.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/octopus.jpg')
  vid36.thumbnail.attach(io: file, filename: 'octopus.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/octopus.mp4')
  vid36.video.attach(io: file, filename: 'octopus.mp4')

  vid37 = Video.create(
    title: "Penguin Fun", 
    description: "penguins are fun",
    author_id: user12.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/penguin.jpg')
  vid37.thumbnail.attach(io: file, filename: 'penguin.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/penguin.mp4')
  vid37.video.attach(io: file, filename: 'penguin.mp4')

  vid38 = Video.create(
    title: "Polar Bears", 
    description: "save them",
    author_id: user13.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/polar.jpg')
  vid38.thumbnail.attach(io: file, filename: 'polar.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/polar.mp4')
  vid38.video.attach(io: file, filename: 'polar.mp4')

  vid39 = Video.create(
    title: "Wild Wombat", 
    description: "magnificent creatures...",
    author_id: user14.id
  )
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/wombat.jpg')
  vid39.thumbnail.attach(io: file, filename: 'wombat.jpg')
  file = open('https://view-tube-seeds.s3-us-west-1.amazonaws.com/wombat.mp4')
  vid39.video.attach(io: file, filename: 'wombat.mp4')
end