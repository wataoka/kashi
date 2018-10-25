# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

json_path1 = Rails.root.join('db', 'data1.json')
json_path2 = Rails.root.join('db', 'data2.json')

json1 = ActiveSupport::JSON.decode(File.read(json_path1))
json2 = ActiveSupport::JSON.decode(File.read(json_path2))

json1["data"].each do |song|
  Dataset.create(singer:song['singer'], lyrics:song['lyrics'])
end

json2["data"].each do |song|
  Dataset.create(singer:song['singer'], lyrics:song['lyrics'])
end
