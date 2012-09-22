class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :region
      t.float :price
      t.date :date1
      t.date :date2
      t.string :desc

      t.timestamps
    end
  end
end
