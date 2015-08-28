class CreateOtherlifts < ActiveRecord::Migration
  def change
    create_table :otherlifts do |t|
      t.string :user_id
      t.string :othervent_id
      t.text :support

      t.timestamps

    end
  end
end
