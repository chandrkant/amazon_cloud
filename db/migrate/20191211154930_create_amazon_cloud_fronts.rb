class CreateAmazonCloudFronts < ActiveRecord::Migration[6.0]
  def change
    create_table :amazon_cloud_fronts do |t|
      t.string :sku
      t.string :rate_code
      t.string :description
      t.integer :begin_range
      t.integer :end_range
      t.string :unit
      t.float :price_per_unit
      t.datetime :effective_date
      t.string :location
      t.string :region
      t.string :servicename

      t.timestamps default: Time.now
    end
    add_index :amazon_cloud_fronts, :sku
    add_index :amazon_cloud_fronts, :rate_code
    add_index :amazon_cloud_fronts, :effective_date
    add_index :amazon_cloud_fronts, :region
  end
end
