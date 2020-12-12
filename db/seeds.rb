
  bob = User.create(first_name: "Bob", last_name: "Bobby", email: "bob@bob.com", password: "123456")
  joan = User.create(first_name: "Joan", last_name: "Joany", email: "joan@joan.com", password: "123456")

  WeatherPost.create(title: "Monday", content: "The sunshine on a Monday!", user_id: bob.id)

  bob.weather_posts.create(title: "Picnic Weather", content: "Feels good enough for a picnic outside!")

  joans_post = joan.weather_posts.build(title: "Thunder Thursday", content: "Looks like its going to thunder today!")
  joans_post.save