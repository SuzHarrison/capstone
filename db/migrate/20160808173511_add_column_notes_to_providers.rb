class AddColumnNotesToProviders < ActiveRecord::Migration
  def change
    add_column :providers, :notes, :string
  end
end
