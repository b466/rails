class TodolisesController < ApplicationController
	def new

		@list = list.new
	end


	def create

	 list = List.new(list_Params)
	 list.save
	 redirect_to '/to'
	end
private

	def list_params
	 params.require(:list).permit(:title, :body)
	end

end


