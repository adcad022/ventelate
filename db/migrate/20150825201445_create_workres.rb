class CreateWorkres < ActiveRecord::Migration
  def change
    create_table :workres do |t|
      t.string :user
      t.text :support

      t.timestamps null: false
    end
  end
end
