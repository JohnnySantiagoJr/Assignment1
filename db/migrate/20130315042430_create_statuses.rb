class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.text :status
      t.string :geocode
      t.string :image_url
      t.references :user

      t.timestamps
    end
    add_index :statuses, :user_id
  end
end
