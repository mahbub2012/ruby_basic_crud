class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, limit: 25, nil: false
      t.float :price
      t.integer :subject_id
      t.text :description
      t.timestamps
    end
  end
end
