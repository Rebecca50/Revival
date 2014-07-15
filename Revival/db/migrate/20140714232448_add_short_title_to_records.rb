class AddShortTitleToRecords < ActiveRecord::Migration
  def change
    add_column :records, :short_title, :string
  end
end
