class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(url: params[:url], name: params[:name])
    if @user.save
      render json: @user
    else
      render json: {error: "Unable to create user."}, status: 400
    end
  end

end
