json.array!(@medicines) do |medicine|
  json.extract! medicine, :id, :nombre, :cantidad, :indicaciones, :laboratorio, :composicion, :posologia, :detalle, :efectos_colaterales, :contraendicaciones, :observaciones
  json.url medicine_url(medicine, format: :json)
end
