class Commment < ApplicationRecord
  has_many :images ,as: :image_demo
end
