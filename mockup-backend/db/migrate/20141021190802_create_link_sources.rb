class CreateLinkSources < ActiveRecord::Migration
  def change
    create_table :link_sources do |t|
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
