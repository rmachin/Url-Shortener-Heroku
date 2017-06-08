class AddUrlToSites < ActiveRecord::Migration[5.1]
  def change
    add_column :sites, :url_long, :string
  end
end
