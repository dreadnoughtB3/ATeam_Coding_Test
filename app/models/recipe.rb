class Recipe < ApplicationRecord
  validates :title, presence: true, on: :create
  validates :making_time, presence: true, on: :create
  validates :serves, presence: true, on: :create
  validates :cost, presence: true, on: :create
  validates :ingredients, presence: true, on: :create
end
