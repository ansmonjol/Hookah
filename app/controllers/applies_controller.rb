class AppliesController < ApplicationController
	def create
		@offer = Offer.find(params[:id])
		@apply = Apply.new(apply_params)
		@apply.user = current_user

		if @apply.save
			redirect_to offer_path
		else
			redirect_to offer_path
		end
	end



	private
		# Strong parameters
		def apply_params
			params.require(:id).permit!
		end
	end
