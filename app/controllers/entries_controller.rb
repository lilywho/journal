class EntriesController < ApplicationController
	before_action :set_entry, only: [:show, :edit, :update, :destroy]
	before_action :set_user, only: [:new, :show, :create, :edit, :update, :destroy]

	def index
		@entries = user.entries
	end

	def show
		# @user
		@entry = Entry.find(params[:id])
	end

	def new
		@user = User.find(current_user.id)
		@entry = Entry.new
		puts "======================="
		puts @user
		puts @entry
		puts "======================="

	end

	def create
		# @user = User.find(params[:user_id])
		@entry = Entry.new(entry_params)

		if @entry.save
			@user.entries << @entry
			redirect_to @user
		else
			render :action => :new
		end
	end

	def edit
		@user
		@entry
	end

	def update
		@user
		@entry
		if @entry.update(entry_params)
			redirect_to @user
		else
			render :action => :edit
		end
	end

	def destroy
		@entry.destroy
		redirect_to @user
	end

	def set_user
		@user = User.find(params[:user_id])
	end

	def set_entry
		@entry = Entry.find(params[:id])
	end

	def entry_params
		params.require(:entry).permit(:date, :text)
	end
end


# 	def index

# 	end

# 	def show
# 		@user
# 	end

# 	def create
# 		@user
# 		@entry = Entry.new(entry_params)

# 		if @entry.save
# 			@user.entries << @entry
# 			redirect_to @user.entries
# 		else
# 			render :action => :new
# 		end
# 	end

# 	def new
# 		@entry = Entry.new
# 		@user = User.find(params[:user_id])
# 	end

# 	def edit

# 	end

# 	def update
# 		if @entry.update(entry_params)
# 			redirect_to @entry
# 		else
# 			render :action => :edit
# 		end
# 	end

# 	def destroy
# 		@entry.destroy
# 		redirect_to entries_url
# 	end

# 	def set_user
# 		@user = User.find(params[:user_id])
# 	end

# 	def set_entry
# 		@entry = Entry.find(params[:id])
# 	end

# 	def entry_params
# 		params.require(:entry).permit(:date, :entry)
# 	end
# end
