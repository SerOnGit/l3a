class CreateSiaxles < ActiveRecord::Migration[7.0]
  def change
    create_table :siaxles do |t|
      t.string :name
      t.datetime :starts_at
      t.text :description
      t.string :image_file_name

      t.timestamps
    end
  end
end
