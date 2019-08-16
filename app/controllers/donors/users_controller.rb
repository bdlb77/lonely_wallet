class Donors::UsersController < ApplicationController

	def dashboard
		@receipts  = TaxReceipt.all
		@donations_count= current_user.donations.count
		soldiers = current_user.donations.map(&:donated_soldiers)
		@total_soldiers = soldiers&.flatten.uniq.count
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
