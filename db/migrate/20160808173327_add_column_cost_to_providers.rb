class AddColumnCostToProviders < ActiveRecord::Migration
  def change
    add_column :providers, :average_cost, :integer
  end
end
