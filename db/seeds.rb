puts 'Destroying old database...'
User.destroy_all

puts "Generating donors"

bill = User.create!(email: "bill_gates@gmail.com",
									 password: "123456",
									 role: "donor",
									 first_name: "Bill",
									 last_name: "Gates")

elon = User.create!(email: "elon_musk@gmail.com",
									 password: "123456",
									 role: "donor",
									 first_name: "Elon",
									 last_name: "Musk")

puts "Finished generating donors"

puts "Generating addresses"

washington = Address.create!(name: "business",
													zip: "98039",
													city: "Washington",
													latitude: "47.624315",
													longitude: "-122.235071",
													address: "1599 79th Pl NE",
													user: bill)

los_angeles = Address.create!(name: "business",
													zip: "90077",
													city: "Los Angeles",
													latitude: "34.098196",
													longitude: "-118.458456",
													address: "10898 Vicenza Way",
													user: elon)

puts "Finished generating addresses"

puts "Generating donations"

1_million = Donation.create!(amount: 1000000,
														 donor: bill)

half_mil = Donation.create!(amount: 500000,
														donor: elon)

puts "Finished generating donations"

puts "Generating tax receipts"

bill_receipt = TaxReceipt.create!(number: 100101,
																	donation: 1_million)

elon_receipt = TaxReceipt.create!(number: 100102,
																	donation: half_mil)

puts "Finished generating tax receipts"