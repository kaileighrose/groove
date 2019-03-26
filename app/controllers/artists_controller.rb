class ArtistsController < ApplicationController
	def show
		@artist_records = Record.all.where(["user_id = ? and artist = ?", current_user.id, params[:id]])
	end

private
	def record_params
    	params.require(:artist).permit(:id, :record_id)
  	end
end
