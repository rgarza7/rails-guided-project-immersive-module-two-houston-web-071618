class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :location
      t.string :img_url

      t.timestamps
    end
  end
end
