class AddColumnYelpToProviders < ActiveRecord::Migration
  def change
    add_column :providers, :yelp_id, :string
  end
end
