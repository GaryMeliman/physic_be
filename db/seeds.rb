require "csv"
csv_db = File.read(Rails.root.join('lib','seeds','db.csv'))
db = CSV.parse(csv_db, { :headers => true } )
db.each do |row|
  nombre = row['Principio'].downcase!.capitalize
  principio = Prince.find_by(nombre: nombre)
  if principio.nil?
    Prince.create(nombre: nombre)
    puts "Principio: #{nombre} añadido"
  end
end
db = CSV.parse(csv_db, { :headers => true } )
db.each do |row, index|
  principio_nombre = row['Principio'].downcase!.capitalize
  principio = Prince.find_by(nombre: principio_nombre)
  nombre = row['Nombre'].downcase!.capitalize
  lab = row['Titular'].downcase!.capitalize
  uso = row['Uso'].downcase!.capitalize
  contenido = row['Contenido'].downcase!.capitalize
  Medicine.create(nombre: nombre , cantidad: contenido ,laboratorio: lab, prince: principio, detalle: uso)
  puts "Medicamento: #{nombre} añadido"
end

puts "#{Prince.count} principios añadidos"
puts "#{Medicine.count} medicamentos añadidos"
