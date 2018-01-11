# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Admin User
User.create!(
  name: "Algan Rustinya",
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
  subtitle: "Web Application",
  body: "As the software world expands, there will always be people who need software to be written, and people willing to write that software in return for money. Propose is a web application that aims to connect people in a marketplace where clients can propose a coding projects and engage freelancers to work on them.",
  main_image: Rails.root.join("app/assets/images/propose.png").open,
  thumb_image: Rails.root.join("app/assets/images/propose.png").open,
  url: "https://github.com/alganbr/Propose",
  position: 0
)

Project.last.technologies.create!(
  name: "Python3"
)
Project.last.technologies.create!(
  name: "Django REST framework"
)
Project.last.technologies.create!(
  name: "PostgreSQL"
)
Project.last.technologies.create!(
  name: "React.js"
)
Project.last.technologies.create!(
  name: "JavaScript"
)
Project.last.technologies.create!(
  name: "Ajax"
)
Project.last.technologies.create!(
  name: "JQuery"
)

Project.create!(
  title: "Stock Market Prediction",
  subtitle: "Data Mining/Machine Learning",
  body: "In this project, we apply sentiment analysis and data mining principles to find the correlation between public sentiment and stock market movements. We use StockTwits data, a labeled Twitter data related to stock market trend, to do a supervised learning and develop a mathematical model to predict the sentiment of the unlabelled Twitter data. Using the predicted sentiment of the unlabelled Twitter data, we are going to predict the short term trend of the stock market, whether it is going to be bullish or bearish.",
  main_image: Rails.root.join("app/assets/images/stock_market_prediction.jpg").open,
  thumb_image: Rails.root.join("app/assets/images/stock_market_prediction.jpg").open,
  url: "https://github.com/alganbr/StockMarketPrediction",
  position: 1
)

Project.last.technologies.create!(
  name: "Python3"
)
Project.last.technologies.create!(
  name: "Numpy"
)
Project.last.technologies.create!(
  name: "Sklearn"
)
Project.last.technologies.create!(
  name: "Twitter API"
)
Project.last.technologies.create!(
  name: "StockTwits API"
)

Project.create!(
  title: "Labeling System",
  subtitle: "Web Application/Machine Learning",
  body: "Supervised learning is a type of learning using a pre-labelled data. However, labeling a huge amount of data can be very difficult and time consuming. The Labeling System is a project developed under UC Institute for Prediction and Technology with the aim to ease the labeling process of huge data. The labeling process will be dealt in the form of surveys send to multiple coders who will label the data.",
  main_image: Rails.root.join("app/assets/images/labelingsystem.png").open,
  thumb_image: Rails.root.join("app/assets/images/labelingsystem.png").open,
  url: "http://github.com/alganbr/LabelingSystem",
  position: 2
)
Project.last.technologies.create!(
  name: "Python3"
)
Project.last.technologies.create!(
  name: "Django"
)
Project.last.technologies.create!(
  name: "PostgreSQL"
)
Project.last.technologies.create!(
  name: "JavaScript"
)
Project.last.technologies.create!(
  name: "JQuery"
)

Project.create!(
  title: "Pinpoint",
  subtitle: "IOS Application/Raspberry PI",
  body: "Pinpoint is a personal tracker device which can be connected and controlled through mobile application. The device is developed using Raspberry Pi attached with GPS locator, speaker, and bluetooth connection. The mobile application is developed in native IOS using Swift with Python backend and Firebase database. Once connected, the device is trackable in realtime and will be displayed in the map.",
  main_image: Rails.root.join("app/assets/images/pinpoint.jpg").open,
  thumb_image: Rails.root.join("app/assets/images/pinpoint.jpg").open,
  url: "https://docs.google.com/document/d/1ZcGTRUNj--Omfl1KFLTTTyKFkRtCXl2xOueNtNQvIKo/edit?usp=sharing",
  position: 3
)
Project.last.technologies.create!(
  name: "Swift"
)
Project.last.technologies.create!(
  name: "Cocoapods"
)
Project.last.technologies.create!(
  name: "Python3"
)
Project.last.technologies.create!(
  name: "Firebase"
)