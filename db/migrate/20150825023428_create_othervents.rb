class CreateOthervents < ActiveRecord::Migration
  def change
    create_table :othervents do |t|
      t.string :other_topic
      t.integer :urgency
      t.text :story

      t.timestamps

    end
  end
end
