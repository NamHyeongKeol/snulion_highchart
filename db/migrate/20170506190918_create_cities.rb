class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name, null: false, default: "", index: true
      t.integer :population, null: false, default: 99999999, index: true
      t.string :definition, null: false, default: "", index: true
      t.float :area, null: false, default: 99999999, index: true
      t.integer :density, null: false, default: 99999999, index: true
      t.string :country, null: false, default: "", index: true
      t.string :continent, null: false, default: "", index: true

      t.timestamps
    end
  end
end
