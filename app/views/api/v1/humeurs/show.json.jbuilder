json.missions @humeur.missions do |mission|
  json.extract! mission, :id, :humeur_id, :content, :photo, :address, :latitude, :longitude, :link, :video, :done
end
