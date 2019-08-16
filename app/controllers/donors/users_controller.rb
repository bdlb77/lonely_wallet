class Donors::UsersController < ApplicationController

	def dashboard
		@receipts  = TaxReceipt.all
		@donations_count= current_user.donations.count

		soldiers = current_user.donations.map(&:donated_soldiers)
		@total_soldiers = soldiers&.flatten.uniq.count
		binding.pry
	end

	def receipts
		@receipts = TaxReceipt.all
	end

end
