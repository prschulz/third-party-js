class AddMetaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :description, :text
    add_column :users, :avatar, :string
    add_column :users, :cover_photo, :string
    add_column :users, :level, :integer
    add_column :users, :guid, :string
  end
end
