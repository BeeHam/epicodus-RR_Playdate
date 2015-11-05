class ChangePriceToDecimal < ActiveRecord::Migration
  def change
    remove_column :plans, :price, :string
  end
end
