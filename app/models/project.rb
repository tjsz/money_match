# == Schema Information
#
# Table name: projects
#
#  id                :integer          not null, primary key
#  title             :string
#  short_discription :string
#  grade_level       :integer
#  expiration_date   :date
#  cost_to_complete  :integer
#  poverty_level     :string
#  state             :string
#  image_url         :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Project < ActiveRecord::Base
end
