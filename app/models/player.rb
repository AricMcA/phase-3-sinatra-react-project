class Player < ActiveRecord::Base
    belongs_to :team

    def self.playerList
        Player.all.sort_by(&:name)
    end
end