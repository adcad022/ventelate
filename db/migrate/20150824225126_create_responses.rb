class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :user_id
      t.string :vent_id
      t.string :topic
      t.text :support

      t.timestamps

    end
  end
end
