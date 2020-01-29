class CharactersController < ApplicationController

  # GET /characters
  # GET /characters.json
  def index
    @characters = HTTParty.get('http://localhost:3000/characters')

    :index
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
    @character = HTTParty.get('http://localhost:3000/characters/'+params[:id])
    # binding.pry
    :show
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.fetch(:character, {})
    end
end
