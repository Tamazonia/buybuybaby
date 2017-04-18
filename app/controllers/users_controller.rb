class UsersController < ApplicationController


  def show

    @user = User.find(params[:id])
    @clothings = @user.clothings

  end


end
