# The pages controller contains all the code for any page inside of /pages
class PagesController < ApplicationController
  
  #back end for pages/index
  def index
  end

  #back end for pages/home

  def home
    @posts = Post.all
  end

  #back end for pages/portfolio

  def portfolio
    #grab the username as the URL :id
    if (User.find_by_username(params[:id])) 
      @username = params[:id]
    else 
      #redirect to error message (root for now)
      redirect_to root_path, :notice=> "User not found!"
    end
    
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
  end

  #back end for pages/notifications not the same as posts
  def notifications
    @posts = Post.all
  end
end
