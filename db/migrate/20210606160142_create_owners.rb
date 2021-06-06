class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :username
      t.string :password

      t.timestamps
    end
    add_index :owners, :username, unique: true
  end
end
