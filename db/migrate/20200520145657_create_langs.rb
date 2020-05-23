class CreateLangs < ActiveRecord::Migration[6.0]
  def change
    create_table :langs do |t|
      t.string :name, null: false, uniqueness: true
      t.integer :data, null: false, default: 0
      t.string :color, null: false, default: '#ffffff'
      t.timestamps
    end
  end
end
