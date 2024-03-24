class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.integer :category_id
      t.string :title
      t.string :description
      t.decimal :goal_amount, precision: 9, scale: 2
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
