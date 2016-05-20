json.array! @petitions do |petition|
  json.price petition.price
  json.status petition.status
  json.medicine petition.medicine
end
