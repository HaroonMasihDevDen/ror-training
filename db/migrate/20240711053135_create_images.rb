class CreateImages < ActiveRecord::Migration[7.1]
  def change
    create_table :images do |t|
      t.string :title
      t.references :image_demo, polymorphic: true

      t.timestamps
    end
  end
end
