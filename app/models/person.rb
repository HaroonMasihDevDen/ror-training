


class Person < ApplicationRecord
  validates :name, presence: true
  validates :terms_and_conditions , acceptance: {accept: ['hello',true] , message: "values can be 'hello' or true"}
  validates :terms_and_conditions , acceptance: { accept: ['world',false], message: "values can be 'world' or false"}
  validates :email , confirmation: true
  validates :email , comparison: {greater_than: :name , message: "email length > name"}
  validates :email , comparison: {greater_than: :name , message: "age should be greater then 18"}
  validates :email , format: {with: /\A[\w]+@devden.io\z/ , message: "Email should end with @devden.io"}
  validates :name , inclusion: {in: %w(haroon salman ali) , message: "only allowed names are haroon salman and ali"}
  validates :age , inclusion: {in: [1,10,20] , message: "only allowed ages are 1,10 and 20"}
  validates :name , length: {minimum: 3 , message: "the length of the name should > 2"}
  validates :age , length: {minimum: 2 , message: "the length of the age is min 2"}
  validates_each :password do |record,attr,value|
    record.errors.add(attr, 'should be mixture of upper case , lower case, digits and special characters') unless
      /\A[\w]+\_ /.match?(value)
    end

  validates :name, presence: true , allow_nil: false, if: :foo?
  validates :age, presence: true , allow_nil: false, if:
   [Proc.new {|a| a.email.start_with?('z')} , Proc.new {|e| e.email.start_with?('s')} ] , unless: Proc.new {|a| a.email.start_with?('z')}

  def foo?
    email.start_with?('f')
  end

  validates_with MyValidator
  validate :kung_fu_master?

  def kung_fu_master?
    errors.add(:name,"you are not a kung fu master") unless name.include?('master')
  end

end
class MyValidator < ActiveModel::Validator
  def validate(record)
    unless record.name.start_with?('X')
      record.errors.add :name, "Provide a name starting with X, please!"
    end
  end
end
