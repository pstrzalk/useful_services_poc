require 'faraday'

user = User.first
first_name = "Foo-#{SecureRandom.uuid}"

puts "New name for #{user.id} should be #{first_name}"

connection = Faraday.new(url: 'http://localhost:3000')
connection.put("/users/#{user.id}") do |c|
  c.params[:user] = { first_name: }
end

pp user.reload
