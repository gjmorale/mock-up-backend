class CreateMashups < ActiveRecord::Migration
  def change
    create_table :mashups do |t|
      t.string :parameters
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
