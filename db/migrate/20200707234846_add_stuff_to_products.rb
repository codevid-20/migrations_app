class AddStuffToProducts < ActiveRecord::Migration[6.0]
  def change
    # rename title to name
    rename_column :products, :title, :name

    # make the datatype of description text rather than string
    change_column :products, :description, :text

    # change price to a decimal
    change_column :products, :price, "numeric USING CAST(price AS numeric)"
    change_column :products, :price, :decimal, precision: 7, scale: 2
  end
end
