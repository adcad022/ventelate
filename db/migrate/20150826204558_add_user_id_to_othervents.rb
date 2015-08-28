class AddUserIdToOthervents < ActiveRecord::Migration
  def change
    add_column :othervents, :user_id, :string
  end
end
