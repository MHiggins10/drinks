class ApplicationController < ActionController::Base
 protect_from_forgery
<<<<<<< HEAD
 
	include ApplicationHelper
=======
>>>>>>> d322bda64ec39cee8cbe3c2b87e1e4b4ae85a83a
    def authorise
        unless signed_in?
           store_location
           redirect_to signin_path, :notice => "Please sign in to access this page."
        end
  end

   def store_location
       session[:return_to] = request.fullpath
   end

end

<<<<<<< HEAD



=======
>>>>>>> d322bda64ec39cee8cbe3c2b87e1e4b4ae85a83a
