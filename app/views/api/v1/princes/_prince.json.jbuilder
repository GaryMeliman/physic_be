json.array! @prince.medicines do |medicine|
  json.medicine_id medicine.id
  json.medicine_nombre medicine.nombre
  json.medicine_cantidad medicine.cantidad
  json.medicine_laboratorio medicine.laboratorio
  json.medicine_detalle medicine.detalle
  json.abavilities medicine.abavilities do |abavility|
    json.abavility_id abavility.id
    json.abavility_price abavility.price
    json.abavility_stock abavility.stock
    json.pharmacy abavility.pharmacy
  end
end
