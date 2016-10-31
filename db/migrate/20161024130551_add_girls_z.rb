class AddGirlsZ < ActiveRecord::Migration
  def up
    remove_column :girls, :crop_x
    remove_column :girls, :crop_y
    remove_column :girls, :crop_w
    remove_column :girls, :crop_h
    add_column :girls,:crop_x,:string
    add_column :girls,:crop_y,:string
    add_column :girls,:crop_w,:string
    add_column :girls,:crop_h,:string
  end

  def down
  end
end
