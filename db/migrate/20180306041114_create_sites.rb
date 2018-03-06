class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :tytle
      t.string :description
      t.string :site_key
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
