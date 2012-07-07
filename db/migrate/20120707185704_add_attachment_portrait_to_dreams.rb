class AddAttachmentPortraitToDreams < ActiveRecord::Migration
  def self.up
    change_table :dreams do |t|
      t.has_attached_file :portrait
    end
  end

  def self.down
    drop_attached_file :dreams, :portrait
  end
end
