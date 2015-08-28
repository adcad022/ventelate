class AddUserIdToLifevents < ActiveRecord::Migration
  def change
    add_column :lifevents, :user_id, :string
  end
end
