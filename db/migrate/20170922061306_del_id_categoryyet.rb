class DelIdCategoryyet < ActiveRecord::Migration[5.1]
  def change
    remove_column :categories, :post_id
  end
end
