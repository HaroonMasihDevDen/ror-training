class Post < ApplicationRecord
  has_many :images , as: :image_demo
end
