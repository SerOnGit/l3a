class RemoveImageFileNameFromPhotos < ActiveRecord::Migration[7.0]
  def change
    remove_column :photos, :, :string
  end
end
