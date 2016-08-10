class NewProviderTable < ActiveRecord::Migration
  def change
    create_table :providers, {:id=>false} do |t|
      t.string   :yelp_id
      t.integer  :bed_count
      t.integer  :average_cost
    end
    execute "ALTER TABLE providers ADD PRIMARY KEY (yelp_id);"
  end
end
