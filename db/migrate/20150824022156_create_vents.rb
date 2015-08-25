class CreateVents < ActiveRecord::Migration
  def change
    create_table :vents do |t|
      t.string :topic
      t.integer :urgency
      t.text :story

      t.timestamps

    end
  end
end
