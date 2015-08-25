class CreateWorkvents < ActiveRecord::Migration
  def change
    create_table :workvents do |t|
      t.string :work_topic
      t.integer :urgency
      t.text :story

      t.timestamps

    end
  end
end
