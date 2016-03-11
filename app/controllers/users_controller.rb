class UsersController < ApplicationController
  def new
  end

  def create
    #we check the Users table to see if there are any matches in the database to the username that was entered. Then we store it in @users
    @users=User.find_by_username(params[:username].strip)
    # if the username is not entered is in the database already, then create user and render to success page
    if @users.nil?
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
        #this saves a username to the new user
      @user.username = params[:username]
        #this saves a password to the new user
      @user.password = params[:password]
      #this saves our new User in our database
      @user.save

      #saving a new phone number into the name 'phone1'
      @phone1 = Phone.new
      #taking the number entered into phone1 space and saved into the number of phone1
      @phone1.number = params[:phonenumber1]
      #tying the user id to the phones table and adding the value of phone1 to the table and saving it
      @user.phones << @phone1

      @phone2 = Phone.new
      @phone2.number = params[:phonenumber2]
      @user.phones << @phone2

      @phone3 = Phone.new
      @phone3.number = params[:phonenumber3]
      @user.phones << @phone3

      render 'show'
    else
      flash[:notice2] = "User ID is taken try another."
      render 'users/new'
    end
  end

  def show
  end

  def logincheck
    #putting the params into a cookie
    if params.has_key?(:username) && !params[:username].strip.empty?
          cookies[:name] = params[:username]
        end
    #storing the cookie into a instance variable
    @storedincookie=cookies[:name]
    #we check the Users table to see if there are any matches in the database to the username that was entered. Then we store it in @users
    @users=User.find_by_username(params[:username])
    # if the username entered is in the database already, then render to success page
    if !@users.nil?
      render 'users/success'
    #if there is no match to the database or nothing was entered, we send user back to login page
    else
      flash[:notice] = "Login failed, please try again or register."
      render 'users/loginpage'
    end
  end

  def success
  end

  def register
  #when you click the reg button
  #will redirect you to the page to fill out and register
  render 'users/new'
  end

  def logout
    #deleting the cookie
    cookies.delete :name
    render 'users/logoutpage'
  end

  def logoutpage
  end

end
