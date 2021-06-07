class AddImgUrlToBuildings < ActiveRecord::Migration[6.1]
  def change
    add_column :buildings, :img_url, :string
  end
end
