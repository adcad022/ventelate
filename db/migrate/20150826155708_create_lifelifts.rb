class CreateLifelifts < ActiveRecord::Migration
  def change
    create_table :lifelifts do |t|
      t.string :user_id
      t.string :lifevent_id
      t.text :support

      t.timestamps

    end
  end
end
