class CreateRewards < ActiveRecord::Migration[7.1]
  def change
    create_table :rewards do |t|
      t.integer :project_id
      t.text :description
      t.decimal :amount, precision: 9, scale: 2
      t.decimal :limit, precision: 9, scale: 2
      t.date :delivery_date

      t.timestamps
    end
  end
end
