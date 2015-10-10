class CreateEventusers < ActiveRecord::Migration
  def change
    create_table :eventusers do |t|
      t.belongs_to :user, null: false
      t.belongs_to :event, null: false

      t.timestamps null: false
    end
  end
end
