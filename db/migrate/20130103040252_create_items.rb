class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.references :category
      t.string :location
      t.references :due_date

      t.timestamps
    end
    add_index :items, :category_id
    add_index :items, :due_date_id
  end
end
