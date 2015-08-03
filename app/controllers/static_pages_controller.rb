class StaticPagesController < ApplicationController
  def home
	  print("[DBG]home is called\n");
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
