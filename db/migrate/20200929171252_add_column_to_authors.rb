class AddColumnToAuthors < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :admin, :boolean
    add_column :authors, :name, :string
    add_column :authors, :username, :string
  end
end
