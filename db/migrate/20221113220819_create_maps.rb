class CreateMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :maps do |t|
      t.string :numb
      t.string :sold, default: "0"

      t.timestamps
    end
  end
end
