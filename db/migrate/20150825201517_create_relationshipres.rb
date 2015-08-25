class CreateRelationshipres < ActiveRecord::Migration
  def change
    create_table :relationshipres do |t|
      t.string :user
      t.text :support

      t.timestamps null: false
    end
  end
end
