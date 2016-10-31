class AddJcrop < ActiveRecord::Migration
  def self.up
    change_table :girls do |t|
      t.integer :crop_x
      t.integer :crop_y
      t.integer :crop_w
      t.integer :crop_h
    end
  end
end
