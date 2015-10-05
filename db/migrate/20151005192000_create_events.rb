class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :image_url, null: false
      t.string :description

      t.belongs_to :user, null: false
    end
    add_index :events, :title, unique: true
  end
end
