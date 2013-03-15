class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag
      t.references :status

      t.timestamps
    end
    add_index :tags, :status_id
  end
end
