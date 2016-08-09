class RemoveColumnBizAddressFromProviders < ActiveRecord::Migration
  def change
    remove_column :providers, :address, :string
  end
end
