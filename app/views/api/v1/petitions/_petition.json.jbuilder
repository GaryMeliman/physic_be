json.array! @petitions do |petition|
  json.status petition.status
  json.medicine petition.medicine
  json.pharmacy petition.pharmacy
end
