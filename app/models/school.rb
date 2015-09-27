# == Schema Information
#
# Table name: schools
#
#  id           :integer          not null, primary key
#  name         :string
#  closing_date :date
#  funds        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  source       :string
#

class School < ActiveRecord::Base
end
