json.extract! @humeur, :id, :name, :color, :icon
json.comments @humeur.missions do |mission|
  json.extract! mission, :id, :humeur_id, :content, :address, :latitude, :longitude, :link, :video, :done
end
