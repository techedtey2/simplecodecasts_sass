class AddPlanToModel < ActiveRecord::Migration[5.0]
  def change
    add_column :models, :plan_id, :integer
  end
end
