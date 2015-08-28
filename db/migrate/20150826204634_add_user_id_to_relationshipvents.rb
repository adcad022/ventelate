class AddUserIdToRelationshipvents < ActiveRecord::Migration
  def change
    add_column :relationshipvents, :user_id, :string
  end
end
