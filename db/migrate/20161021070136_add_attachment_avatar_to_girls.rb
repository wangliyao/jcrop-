class AddAttachmentAvatarToGirls < ActiveRecord::Migration
  def self.up
    change_table :girls do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :girls, :avatar
  end
end
