class CreateRelationshiplifts < ActiveRecord::Migration
  def change
    create_table :relationshiplifts do |t|
      t.string :user_id
      t.string :relationshipvent_id
      t.text :support

      t.timestamps

    end
  end
end
