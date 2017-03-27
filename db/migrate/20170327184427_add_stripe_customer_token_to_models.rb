class AddStripeCustomerTokenToModels < ActiveRecord::Migration[5.0]
  def change
     add_column :models, :stripe_customer_token, :string

  end
end
