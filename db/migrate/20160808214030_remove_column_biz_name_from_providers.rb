class RemoveColumnBizNameFromProviders < ActiveRecord::Migration
  def change
    remove_column :providers, :name, :string
  end
end
