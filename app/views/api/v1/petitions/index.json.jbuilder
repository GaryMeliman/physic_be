json.array! @petitions do |petition|
  json.price petitions.price
  json.status petition.status
  json.medicine petition.medicine
end
