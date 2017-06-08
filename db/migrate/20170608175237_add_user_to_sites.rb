class AddUserToSites < ActiveRecord::Migration[5.1]
  def change
    add_column :sites, :url_short, :string
  end
end
