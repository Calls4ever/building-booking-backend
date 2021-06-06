class CreateBuildings < ActiveRecord::Migration[6.1]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :string
      t.string :location
      t.integer :max_piriority_point, default: 15
      t.integer :min_piriority_point, default: 10

      t.timestamps
    end
  end
end
