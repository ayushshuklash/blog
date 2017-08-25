class AddPublisherToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :publisher, :string
  end
end
