class Donors::UsersController < ApplicationController

	def dashboard
		@receipts  = TaxReceipt.all
		@donations_count= current_user.donations.count
		soldiers = current_user.donations.map(&:donated_soldiers)
		@total_soldiers = soldiers&.flatten.uniq.count
		@address = Address.find_by(user_id: current_user.id)
		@donations = Donation.where(user: current_user)
		@receipts = []
		@total_donation = 0
		@donations.each do |donation|
			@receipts << TaxReceipt.find_by(donation_id: donation)
			@total_donation += donation.amount
		end
	end

	def receipts
	end

	def download_pdf
		send_file "#{Rails.root}/app/assets/docs/receipt.pdf", type: "application/pdf", x_sendfile: true
	  end

end
