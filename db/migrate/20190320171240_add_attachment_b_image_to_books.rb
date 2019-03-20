class AddAttachmentBImageToBooks < ActiveRecord::Migration[5.2]
  def self.up
    change_table :books do |t|
      t.attachment :b_image
    end
  end

  def self.down
    remove_attachment :books, :b_image
  end
end
