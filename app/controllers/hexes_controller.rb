class HexesController < ApplicationController
  def update
    @game = Game.find(params[:game_id])
    @hex = @game.hexes.find(params[:id])
    @hex.assign_attributes(hex_params)
    if @hex.save
      redirect_to @game
    end
  end

  private
  def hex_params
    params.require(:hex).permit(:word)
  end
end
