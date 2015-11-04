class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.column :email, :string
      t.column :plan_id, :integer
      t.column :stripe_customer_token, :string

      t.timestamps
    end
  end
end
