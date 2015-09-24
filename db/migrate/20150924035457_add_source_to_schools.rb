class AddSourceToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :source, :string
  end
end
