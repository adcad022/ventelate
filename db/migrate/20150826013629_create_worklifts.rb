class CreateWorklifts < ActiveRecord::Migration
  def change
    create_table :worklifts do |t|
      t.string :user_id
      t.string :workvent_id
      t.text :support

      t.timestamps

    end
  end
end
