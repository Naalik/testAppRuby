class CreateMicroposts < ActiveRecord::Migration[5.0]
  def change
    create_table :microposts do |t|
      t.text :name
      t.text :email

      t.timestamps
    end
  end
end
