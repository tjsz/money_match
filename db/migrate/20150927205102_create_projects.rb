class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :short_discription
      t.integer :grade_level
      t.date :expiration_date
      t.integer :cost_to_complete
      t.string :poverty_level
      t.string :state
      t.string :image_url

      t.timestamps null: false
    end
  end
end
