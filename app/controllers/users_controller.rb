class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    @user = User.new(user_params)

    if @user.save
      # set session user to bypass login after signup
      # session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end

  end

end
