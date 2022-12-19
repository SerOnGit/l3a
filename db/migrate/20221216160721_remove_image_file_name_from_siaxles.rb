class RemoveImageFileNameFromSiaxles < ActiveRecord::Migration[7.0]
  def change
    remove_column :siaxles, :image_file_name, :string
  end
end
