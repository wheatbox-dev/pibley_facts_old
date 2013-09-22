# == Schema Information
#
# Table name: facts
#
#  id         :integer          not null, primary key
#  info       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Fact < ActiveRecord::Base
  attr_accessible :info

  validates :info, presence: true, length: { maximum: 200 }, uniqueness: { case_sensitive: false }
end
