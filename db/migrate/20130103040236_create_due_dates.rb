class CreateDueDates < ActiveRecord::Migration
  def change
    create_table :due_dates do |t|
      t.string :name
      t.string :description
      t.references :category
      t.datetime :time_due

      t.timestamps
    end
    add_index :due_dates, :category_id
  end
end
