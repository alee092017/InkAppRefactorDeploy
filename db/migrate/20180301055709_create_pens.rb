class CreatePens < ActiveRecord::Migration[5.1]
  def change
    create_table :pens do |t|
      t.string :name
      t.text :description
      t.string :tip_size
      t.string :ink_Color
      t.string :model_no

      t.timestamps
    end
  end
end
