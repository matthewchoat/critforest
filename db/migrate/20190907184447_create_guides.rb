class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
        t.string :title
        t.text :description
        t.string :platform
        t.integer :user_id
        t.timestamps
    end
    add_index :guides, :user_id
  end
end
