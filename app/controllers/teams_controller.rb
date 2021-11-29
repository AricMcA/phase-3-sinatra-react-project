class TeamsController < ApplicationController
    get '/teams' do
        teams = Team.all
        teams.to_json(include: :players)
    end

    get '/teams/:id' do
        team = Team.find_by(id: params[:id])
        if team
            team.to_json(include: :players)
        else
            "404 - Team not found"
        end
    end

    post '/teams' do
        team = Team.create(params)
        team.to_json
    end

    delete '/teams/:id' do 
        team = Team.find_by(id: params[:id])
        team.destroy
    end

    put '/teams/:id' do
        team = Team.find_by(id: params[:id])
        team.update(name: params[:name])
    end
end