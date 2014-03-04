class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :name
      t.references :picable, polymorphic: true
      
      t.timestamps
    end
    add_index :pics, :picable_id
  end
end
