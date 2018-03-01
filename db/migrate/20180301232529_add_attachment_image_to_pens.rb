class AddAttachmentImageToPens < ActiveRecord::Migration[5.0]
  def self.up
    change_table :pens do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pens, :image
  end
end
