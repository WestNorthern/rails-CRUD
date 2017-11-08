class UsersController < ApplicationController
  #show all users
  #GET localhost:3000/users
  def index
    @users = User.all

  end

  #show the form to make a new user
  #GET localhost:3000/users/new
  def new
    @user = User.new
    p params
  end

  #handles form submission and makes the new user
  #POST localhost:3000/users/
  def create
    @user = User.create(user_params)
    # @user.save ??
    redirect_to @user

  end

  #shows the user details page
  #GET localhost:3000/users/id
  def show
    @user = User.find(params[:id])

  end

  #shows the form for editing the user
  #GET localhost:3000/users/id/edit
  def edit
    @update_welcome = 'You have accessed the update page'
    @user = User.find(params[:id])

  end

  #handles form submission for updating the user
  #PATCH localhost:3000/users/id
  #PUT localhost:3000/users/id
  def update
    @user = User.find(params[:id])
    @user = User.update(user_params)
    redirect_to @user

  end

  #destroys the user
   #DELETE localhost:3000/users/id
  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
