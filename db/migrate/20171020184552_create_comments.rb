class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :comment_text
      t.integer :user_id
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
