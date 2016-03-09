class LoginpageController < ApplicationController
  def username
users= User.where("username = ? AND password = ?", params[:username], params[:password])
    # if the username entered is in the database already, then render to success page
    if user.empty?
      render 'successpage/success'
      #looking through the table Users
    elsif users.first.username == params[:username] && users.first.password == params[:password]
      session[:username]=params[:username]
      session[:password]=params[:password]
      session[:id]=users.first.id
      redirect_to '/users/show'
      flash[:alert]="Congrats!"
    else
      render 'loginpage/username'
      flash.now[:alert] = 'Not Valid'
    end
  end
end
