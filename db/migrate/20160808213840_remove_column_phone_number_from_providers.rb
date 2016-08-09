class RemoveColumnPhoneNumberFromProviders < ActiveRecord::Migration
  def change
    remove_column :providers, :phone, :string
  end
end
