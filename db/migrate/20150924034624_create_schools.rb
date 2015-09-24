class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.date :closing_date
      t.integer :funds

      t.timestamps null: false
    end
  end
end
