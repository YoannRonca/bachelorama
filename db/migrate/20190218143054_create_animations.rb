class CreateAnimations < ActiveRecord::Migration[5.2]
  def change
    create_table :animations do |t|
      t.string :title
      t.string :category
      t.string :email
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
