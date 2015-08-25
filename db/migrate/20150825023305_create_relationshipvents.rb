class CreateRelationshipvents < ActiveRecord::Migration
  def change
    create_table :relationshipvents do |t|
      t.string :relationship_topic
      t.integer :urgency
      t.text :story

      t.timestamps

    end
  end
end
