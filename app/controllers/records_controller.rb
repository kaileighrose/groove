class RecordsController < ApplicationController

	def new
    	@record = Record.new
	end

  	def create
	    @record = Record.create(record_params)
	    @record.user_id = current_user.id
	    if @record.save
	    	redirect_to(@record)
	    else
	    	render :new
	    end
  	end

	def edit
		@record = Record.find(params[:id])
	end

  	def update
	    @record = Record.find(params[:id])
	    if @record.update(record_params)
	    	redirect_to(@record)
	    else
	    	render :edit
	    end
  	end

  	def show
	    @record = Record.find(params[:id])
  	end

  	def index
	    @records = Record.all.where("user_id = ?", current_user.id)
  	end

  	def destroy
	    @record = Record.find(params[:id])
	    if @record.destroy 
	    	redirect_to records_path
	    else
	    	flash[:error] = 'Unable to delete record'
	    end
  	end

private
    def record_params
    	params.require(:record).permit(:user_id, :id, :artist, :title, :year, :condition, :art)
  	end
end