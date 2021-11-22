class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.float :score
      t.float :projected_score
      t.integer :team_id
    end
  end
end
