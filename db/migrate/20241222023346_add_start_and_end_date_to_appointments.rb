class AddStartAndEndDateToAppointments < ActiveRecord::Migration[7.1]
  def change
    add_column :appointments, :start_date, :datetime
    add_column :appointments, :end_date, :datetime
  end
end
