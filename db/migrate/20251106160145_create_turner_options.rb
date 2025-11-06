class CreateTurnerOptions < ActiveRecord::Migration[8.0]
  def change
    create_table :turner_options do |t|
      t.references :turner, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
