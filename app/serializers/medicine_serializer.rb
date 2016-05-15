class MedicineSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :cantidad, :detalle, :laboratorio
end
