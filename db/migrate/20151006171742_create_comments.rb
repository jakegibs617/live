class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.string :rating, null: false
      t.string :image_url

      t.belongs_to :user, null: false
      t.belongs_to :event, null: false
    end
  end
end
