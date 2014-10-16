class CreateMashUps < ActiveRecord::Migration
  def change
    create_table :mash_ups do |t|
      t.string :name

      t.timestamps
    end
  end
end
