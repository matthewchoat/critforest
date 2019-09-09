class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :subtitle
      t.integer :section_id
      t.timestamps
    end
    add_index :pages, :section_id
  end
end
