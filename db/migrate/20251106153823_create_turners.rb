class CreateTurners < ActiveRecord::Migration[8.0]
  def change
    create_table :turners do |t|
      t.references :slot, null: false, foreign_key: true
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
