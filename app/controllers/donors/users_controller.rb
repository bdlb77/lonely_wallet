class Donors::UsersController < ApplicationController

	def dashboard
	end

	def receipts
		@receipts = TaxReceipt.all
	end

end
