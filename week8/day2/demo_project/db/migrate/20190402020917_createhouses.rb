class Createhouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :address, null: false
      t.string :resident
      t.timestamps
      #add_column :cats, :name_of_column, :type_of:column
    end
  end
end
