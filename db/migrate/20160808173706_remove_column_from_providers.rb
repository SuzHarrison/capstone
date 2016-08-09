class RemoveColumnFromProviders < ActiveRecord::Migration
  def change
    remove_column :providers, :notes, :string
  end
end
