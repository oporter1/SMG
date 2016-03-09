class UsersController < ApplicationController
  def new
  end

  def create
    # this creates a new user for the Users table
    @user = User.new
    # this saves a name to the new user
    @user.name = params[:name]
    #this saves a address to the new user
    @user.address = params[:address]
    #this saves a city to the new user
    @user.city = params[:city]
      #this saves a state to the new user
    @user.state = params[:state]
      #this saves a postalcode to the new user
    @user.postalcode = params[:postalcode]
      #this saves a country to the new user
    @user.country = params[:country]
      #this saves a email to the new user
    @user.email = params[:email]
      #this saves a user_id to the new user
    @user.user_id = params[:user_id]
      #this saves a password to the new user
    @user.password = params[:password]

    #this saves our new User in our database

    @user.save

    render 'show'
  end

  def show
  end
end
