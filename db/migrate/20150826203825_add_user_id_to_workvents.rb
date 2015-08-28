class AddUserIdToWorkvents < ActiveRecord::Migration
  def change
    add_column :workvents, :user_id, :string
  end
end
