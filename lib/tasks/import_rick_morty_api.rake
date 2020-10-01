namespace :import_rick_morty_api do
  desc "Imports Characters from Rick & Morty API"
  task import_characters: :environment do
    begin
      data = JSON.parse(RestClient.get("https://rickandmortyapi.com/api/character"))
      data['results'].each do |character|
        new_character = Character.find_or_create_by(name: character['name'])
        new_character.episodes.clear
        
        character['episode'].each do |episode|
          new_episode = Episode.find_or_create_by(number: episode.split("/")&.last&.to_i)
          new_character.status = character['status']
          new_character.image = character['image']
          new_character.episodes << new_episode
          new_character.save
        end
      end
      puts "All Characters where Imported/Updated"
    rescue => exception
      puts exception
    end
  end

end
