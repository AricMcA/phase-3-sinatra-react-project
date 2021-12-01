class PlayersController < ApplicationController
    get '/players' do
        sortedPlayers = Player.playerList
        sortedPlayers.to_json
    end

    post '/players' do
        player = Player.create(params)
        player.to_json
    end

    delete '/players/:id' do
        player = Player.find_by(id: params[:id])
        player.destroy
    end
end