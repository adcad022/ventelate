class RemoveReplyFromVents < ActiveRecord::Migration
  def change
    remove_column :vents, :reply
  end
end
