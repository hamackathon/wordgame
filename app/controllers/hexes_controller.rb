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

  def getxy(i)
    ax = (i - 1) % 11
    ay = (i - 1) / 11
    y = ay * 2
    if ax <= 4 
      x = ax
    else
      x = ax - 5
    end
    return x, y
  end

  def getindex(x, y)
    if y % 2 == 1 then
      x += 5
    end
    y /= 2
    return y * 11 + x
  end
end
