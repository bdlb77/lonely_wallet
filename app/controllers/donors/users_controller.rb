class Donors::UsersController < ApplicationController

	def dashboard
		@receipts  = TaxReceipt.all
		@donations_count= current_user.donations.count
		soldiers = current_user.donations.map(&:donated_soldiers)
		@total_soldiers = soldiers&.flatten.uniq.count
	end

	def receipts
		@receipts = TaxReceipt.all
	end

	def download_pdf
		send_file "#{Rails.root}/app/assets/docs/receipt.pdf", type: "application/pdf", x_sendfile: true
	  end

end
