class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :set_user, only: [:show]

	def index

	end

	def show
		@user
	end

	def new

	end

	def create

	end

	def new

	end

	def edit

	end

	def update

	end

	def destroy

	end

	private
	def set_user
		@user = User.find(params[:id])
	end

	# def entry_params
	# 	params.require(:entry).permit(:date, :entry)
	# end
end
