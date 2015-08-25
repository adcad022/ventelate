class CreateLifevents < ActiveRecord::Migration
  def change
    create_table :lifevents do |t|
      t.string :life_topic
      t.integer :urgency
      t.text :story

      t.timestamps

    end
  end
end
