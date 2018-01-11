# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Admin User
User.create!(
  email: "algan_br@hotmail.com", 
  password: "rustinya",
  password_confirmation: "rustinya",
  roles: "admin"
)

# Create 10 blogs
10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog + 1}",
    body: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.",
  )
end

# Create projects
Project.create!(
  title: "Propose",
  subtitle: "web application",
  body: "As the software world expands, there will always be people who need software to be written, and people willing to write that software in return for money. Propose is a web application that aims to connect people in a marketplace where clients can propose a coding projects and engage freelancers to work on them. Front-end technologies: React.js, Ajax, JQuery, Back-end technologies: Python, Django REST framework, PostgreSQL, Supporting tools: Vagrant, Webpack',
      url: 'https://github.com/alganbr/propose",
  main_image: Rails.root.join("app/assets/images/propose.png").open,
  thumb_image: Rails.root.join("app/assets/images/propose.png").open,
  position: 0
)

Project.create!(
  title: "Stock Market Prediction",
  subtitle: "machine learning",
  body: "In this project, we apply sentiment analysis and data mining principles to find the correlation between public sentiment and stock market movements. We use StockTwits data, a labeled Twitter data related to stock market trend, to do a supervised learning and develop a mathematical model to predict the sentiment of the unlabelled Twitter data. Using the predicted sentiment of the unlabelled Twitter data, we are going to predict the short term trend of the stock market, whether it is going to be bullish or bearish. Technologies: Python3, Numpy, Sklearn, NLTK, Twitter APIs, StockTwits APIs.',
      url: 'https://github.com/alganbr/cs145",
  main_image: Rails.root.join("app/assets/images/stock_market_prediction.jpg").open,
  thumb_image: Rails.root.join("app/assets/images/stock_market_prediction.jpg").open,
  position: 1
)

Project.create!(
  title: "Labeling System",
  subtitle: "web application",
  body: "Supervised learning is a type of learning using a pre-labelled data. However, labeling a huge amount of data can be very difficult and time consuming. The Labeling System is a project developed under UC Institute for Prediction and Technology with the aim to ease the labeling process of huge data. The labeling process will be dealt in the form of surveys send to multiple coders who will label the data. Technologies: Python, Django, PostgreSQL, JQuery",
  main_image: Rails.root.join("app/assets/images/labelingsystem.png").open,
  thumb_image: Rails.root.join("app/assets/images/labelingsystem.png").open,
  position: 2
)

Project.create!(
  title: "Pinpoint",
  subtitle: "IOS application/raspberry pi",
  body: "Supervised learning is a type of learning using a pre-labelled data. However, labeling a huge amount of data can be very difficult and time consuming. The Labeling System is a project developed under UC Institute for Prediction and Technology with the aim to ease the labeling process of huge data. The labeling process will be dealt in the form of surveys send to multiple coders who will label the data. Technologies: Python, Django, PostgreSQL, JQuery",
  main_image: Rails.root.join("app/assets/images/pinpoint.jpg").open,
  thumb_image: Rails.root.join("app/assets/images/pinpoint.jpg").open,
  position: 3
)