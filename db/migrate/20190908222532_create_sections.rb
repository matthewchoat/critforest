class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :title
      t.integer :guide_id
      t.timestamps
    end
    add_index :sections, :guide_id
  end
end
