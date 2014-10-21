class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :value
      t.string :link
      t.string :title
      t.references :mashup, index: true
      t.references :link_source, index: true

      t.timestamps
    end
  end
end
