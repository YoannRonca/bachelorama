class AddPhotoToAnimations < ActiveRecord::Migration[5.2]
  def change
    add_column :animations, :photo, :string
  end
end
