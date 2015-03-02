class SessionsController < ApplicationController
  def new
  
  end

  def create
<<<<<<< HEAD
	user = User.find_by_name(params[:name])	
=======
	user = User.find_by_name(params[:username])	
>>>>>>> d322bda64ec39cee8cbe3c2b87e1e4b4ae85a83a
	if user && user.authenticate(params[:password]) 			
		session[:user_id] = user.id
		redirect_to user   #stores the id in the session 	redirect_to user		#displays the user/show view
	else  	 		
		flash.now[:error] = "Invalid name/password combination."      	
		render 'new'		           #shows the signin page again 
    end
  end


  def destroy
	if signed_in?
			session[:user_id] = nil					
		else
			flash[:notice] = "You need to sign in first"	
		end		
		redirect_to signin_path
	end
end
