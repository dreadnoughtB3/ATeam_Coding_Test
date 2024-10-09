# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Recipe.create!(
  title: "チキンカレー",
  making_time: "45分",
  serves: "4人",
  ingredients: "玉ねぎ,肉,スパイス",
  cost: 1000,
  created_at: "2016-01-10 12:10:12",
  updated_at: "2016-01-10 12:10:12"
)

Recipe.create!(
  title: "オムライス",
  making_time: "30分",
  serves: "2人",
  ingredients: "玉ねぎ,卵,スパイス,醤油",
  cost: 700,
  created_at: "2016-01-11 13:10:12",
  updated_at: "2016-01-11 13:10:12"
)

