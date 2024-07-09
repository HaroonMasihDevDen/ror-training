
class Zoo
  def self.before_create(record)
    if record.title.blank?
      record.title = "custom title"
    end
  end
end


class Article < ApplicationRecord
  # validates :title, presence: true
  # validates :body, presence: true, length: { minimum: 1 }

  has_many :comments

  before_create :before_create_message
  after_create :after_create_message

  private

  def before_create_message
    puts "this is the before create message+++++++++++++++++++++++++++"
  end

  def after_create_message
    puts "this is the after create message++++++++++++++++++++++++++++"
  end

  before_create Zoo
  after_initialize do |user|
    puts "You have initialized an object!++++++++++++++++++++++++++++++"
  end
  after_find do |user|
    puts "You have found an object!++++++++++++++++++++++++++++++++++++"
  end

  after_touch :some_one_touch_object
  private
    def some_one_touch_object
    puts "You have touched the object so we are changing updated_at stamp to current time\n!++++++++++++++++++++++++++++++++++++"
  end
  before_save :before_save_callback
  before_create :before_create_callback
  after_create :after_create_callback

  private

  def before_save_callback
    puts "before_save called"
  end

  def before_create_callback
    puts "before_create called"
  end

  def after_create_callback
    puts "after_create called"
  end

  after_commit {puts "this is 1"}
  after_commit {puts "this is 3"}
  after_commit {puts "this is 2"}
  after_commit {puts "this is 4"}
end
