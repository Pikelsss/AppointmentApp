class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    unless table_exists?(:tasks)
      create_table :tasks do |t|
        t.string :item
        t.boolean :completed
        t.references :appointment, foreign_key: true

        t.timestamps
      end
    end
  end
end