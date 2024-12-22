class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :title
      t.text :description
      t.date :date
      t.time :time  # Ensure this field exists
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
