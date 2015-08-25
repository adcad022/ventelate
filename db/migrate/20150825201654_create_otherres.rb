class CreateOtherres < ActiveRecord::Migration
  def change
    create_table :otherres do |t|
      t.string :user
      t.text :support

      t.timestamps null: false
    end
  end
end
