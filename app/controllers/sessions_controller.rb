class SessionsController < ApplicationController
  def new
  end
  def create
    #render 'new'
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #sign in and redirect
      sign_in user
      redirect_to user
    else
      #show error and redaw singin form
      #show flash message
      #flash[:error] = 'Invalid email/password combination'
      flash.now[:error] = 'Invalid email/password combination'
      render 'new' #rener new.html.erb
    end
  end
  def destroy
    sign_out
    redirect_to root_url
  end
end
