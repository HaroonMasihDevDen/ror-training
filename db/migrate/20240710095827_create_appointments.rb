class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.date :date
      t.belongs_to :patient
      t.belongs_to :physician

      t.timestamps
    end
  end
end
