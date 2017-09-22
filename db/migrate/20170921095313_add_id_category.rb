class AddIdCategory < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :post_id, :integer
  end
end
