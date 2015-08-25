class CreateLiferes < ActiveRecord::Migration
  def change
    create_table :liferes do |t|
      t.string :user
      t.text :support

      t.timestamps null: false
    end
  end
end
