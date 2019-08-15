class Donors::UsersController < ApplicationController

	def dashboard
	end

	def receipts
		@address = Address.find_by(user_id: current_user.id)
		@donations = Donation.where(user: current_user)
		@receipts = []
		@donations.each do |donation|
			@receipts << TaxReceipt.find_by(donation_id: donation)
		end
	end

end
