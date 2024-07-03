class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true , length: {minimum:1,}

  has_many :comments

end
