# The pages controller contains all the code for any page inside of /pages
class PagesController < ApplicationController
  
  #back end for pages/index
  def index
  end

  #back end for pages/home

  def home
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
  end

  #back end for pages/explore
  def explore
  end
end
