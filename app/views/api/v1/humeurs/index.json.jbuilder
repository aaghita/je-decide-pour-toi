json.array! @humeurs do |humeur|
  json.extract! humeur, :id, :name, :color, :icon
end
