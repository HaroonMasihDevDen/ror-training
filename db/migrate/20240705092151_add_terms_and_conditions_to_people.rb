class AddTermsAndConditionsToPeople < ActiveRecord::Migration[7.1]
  def change
    add_column :people, :terms_and_conditions, :boolean
  end
end
