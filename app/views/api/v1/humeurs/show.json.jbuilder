json.mission @mission do |mission|
  json.extract! mission, :id, :humeur_id, :content, :address, :latitude, :longitude, :link, :video, :done, :image
end
