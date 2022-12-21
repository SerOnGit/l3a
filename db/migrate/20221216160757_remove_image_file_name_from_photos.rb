class RemoveImageFileNameFromPhotos < ActiveRecord::Migration[7.0]
  def change
    remove_column :photos, :image_name, :string
  end
end
