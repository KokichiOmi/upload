100.times do |n|
  email = Faker::Internet.email
  password = "password"
  name = "name"
  User.create!(email: email,
               password: password,
               password_confirmation: password,
               name: name
               )
end