class RatingsController < ApplicationController

  respond_to :html

  def new
    @rating = Rating.new(game_id: params[:game_id])
  end

  def create
    @rating = Rating.create rating_params

    if @rating.persisted?
      flash[:notice] = 'Your rating has been submitted'
      redirect_to games_path
    else
      flash[:error] = 'There was an error'
      render :new
    end
  end


  def game_info
    @game = Game.find(params[:game_id].to_i)

    render json: {
     content: render_to_string({
         partial: 'game_info',
         layout: nil
       })
     }
  end


  private

  def rating_params
    params.require(:rating).permit(
      :game_id,
      :rating
    )
  end
end