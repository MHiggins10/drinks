class PostsController < ApplicationController
before_filter :authorise
def create
     @drink = Drink.find params[:drink_id]
     @post = @drink.posts.create params[:post]
     @post.user_id = @current_user.id		#sets the user_id FK
     @post.save					#saves the @post 					#object to the posts table
	respond_to do |format|
		format.html { redirect_to @drink }
    	end
end




end
