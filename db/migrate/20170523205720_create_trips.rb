class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.integer :price
      t.string :image
      t.date :start_date
      t.date :end_date
      t.integer :number_of_member

      t.timestamps
    end
  end
end
