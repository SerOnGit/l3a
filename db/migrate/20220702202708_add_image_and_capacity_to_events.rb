class AddImageAndCapacityToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :image_file_name, :string, default: "placeholder.png"
  end
end
