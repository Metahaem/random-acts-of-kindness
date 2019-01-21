class Api::V1::ActsController < ApplicationController

  def index
    @acts = Act.all
    render json: @acts
  end

  def show
    render json: @act
  end

  def create
    @act = Act.new(content: params[:content], category_id: params[:category_id], user_id: params[:user_id])
    if @act.save
      render json: @act
    else
      render json: {error: "Unable to create act."}, status: 400
    end
  end

  def increase_likes
    @act.act_count += 1
    @act.save
    render json: @act
  end

private

  def act_params
    params.permit(:content, :user_ids, :category_ids)
  end

  def find_act
    @act = Act.find(params[:id])
  end
end
