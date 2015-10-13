class AddAddressToEvents < ActiveRecord::Migration
  def change
    add_column :events, :address, :string, null: false
    add_column :events, :city, :string, null: false
    add_column :events, :state, :string, null: false
  end
end
