class ItemsController < ApplicationController
	def index
		@items = Item.all
	end

	# items/1 GET
	def show
		unless @item = Item.where(id: params[:id]).first
			redirect_to "public/404.html"
		end
	end

	# items/new GET
	def new

	end

	# items/1/edit GET
	def edit

	end

	# items POST
	def create
	end

	# items/1 PUT
	def update

	end

	# items/1 DELETE
	def destroy

	end
end
