class StaticPagesController < ApplicationController
  def home
	  #print("[DBG]home is called\n");
	  if signed_in?
	    #@micropost = current_user.microposts.build if signed_in?
            @micropost  = current_user.microposts.build
            @feed_items = current_user.feed.paginate(page: params[:page])
	  end
  end

  def help
	  print("[DBG]help is called\n");
  end

  def about
	  print("[DBG]about is called\n");
  end

  def contact
	  print("[DBG]contact is called\n");
  end
end
