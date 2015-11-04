class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.column :name, :string
      t.column :price, :string
      t.column :time, :string
    end
  end
end
