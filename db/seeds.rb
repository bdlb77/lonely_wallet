puts 'Destroying old database...'
User.destroy_all

puts "Generating donors"

bill = User.create!(email: "bill_gates@gmail.com",
									 password: "123456",
									 role: "donor",
									 first_name: "Bill",
									 last_name: "Gates")