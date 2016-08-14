class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @foods = @user.listings
  end
end
