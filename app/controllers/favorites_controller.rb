class FavoritesController < ApplicationController

  before_filter :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: @post)
    authorize favorite

    if favorite.save
      #Add code to generate a success flash and redirect to @post
      # Remember the path shortcut: [@post.topic, @post]
      flash[:notice] = "Favorite was saved."
      redirect_to [@post.topic, @post]
    else
      # Add code to generate a failure flash and redirect to @post
      flash[:error] = "There was an error saving the favorite. Please try again."
      redirect_to [@post]
    end
  end

  def destroy
    # Get the post from the params
    # Find the current user's favorite with the ID in the params
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.find(params[:id])
    authorize favorite
    
    if favorite.destroy
      # Flash success and redirect to @post
      flash[:notice] = " favorite for \"#{@post.title}\" was deleted successfully."
      redirect_to [@post.topic, @post]
    else
      # Flash error and redirect to @post
      flash[:error] = "There was an error deleting the favorite."
      redirect_to [@post.topic, @post]
    end
  end
end
