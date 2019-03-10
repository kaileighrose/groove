class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.belongs_to :user, index: true
      t.string :artist
      t.string :title
      t.integer :year
      t.text :condition

      t.timestamps
    end
  end
end
