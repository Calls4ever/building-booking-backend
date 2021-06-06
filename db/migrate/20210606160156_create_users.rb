class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.integer :piriority_point, default: 25

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
