class Image < ApplicationRecord
  belongs_to :image_demo , polymorphic: true
end
