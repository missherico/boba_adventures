module AdventuresHelper

def check_adventure_owner
		adventure = current_user.adventures.where(:id => params[:id]).first
    	if adventure.nil?
    		flash[:error] = "That's not your adventure."
			redirect_to adventure_path(params[:id])
		end
	end


end
