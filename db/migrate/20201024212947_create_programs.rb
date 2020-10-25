class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :programs do |t|
      t.string :name
      t.float :progress
      t.string :author
      t.string :description
      t.boolean :private
      t.string :category

      t.timestamps
    end

    add_index :programs, :name
    add_index :programs, :author
    add_index :programs, :category
  end
end
