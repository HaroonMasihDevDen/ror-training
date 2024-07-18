class Person < ApplicationRecord
    scope :tenager, ->{where(age:...21)}
    enum :status, [:shipped , :being_packed, :completed ,:cancelled]
end
