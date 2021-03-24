class CreateMixtures < ActiveRecord::Migration[6.1]
  def change
    create_table :mixtures do |t|
      t.integer :percentage, null: false
      t.references :wine, null: false, foreign_key: true
      t.references :strain, null: false, foreign_key: true

      t.timestamps
    end
  end
end
