class CreateJoinTableEpisodesCharacters < ActiveRecord::Migration[6.0]
  def change
    create_join_table :episodes, :characters do |t|
      # t.index [:episode_id, :character_id]
      # t.index [:character_id, :episode_id]
    end
  end
end
