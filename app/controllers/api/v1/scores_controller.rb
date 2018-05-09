class Api::V1::ScoresController < ApplicationController

  def index
    @scores = Score.all
    render json: @scores
  end

  def create
    @score = Score.create(score_params)
    if @score.save
      render json: @score, status: :created, location: @score
    else
      render json: @score.errors, status: :unprocessable_entity
    end
  end

  private

  def score_params
    params.require(:score).permit(:quantity, :user_id)
  end

end
