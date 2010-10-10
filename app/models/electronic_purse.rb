# == Schema Information
# Schema version: 20101009115355
#
# Table name: electronic_purses
#
#  id         :integer         not null, primary key
#  credit     :decimal(, )
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class ElectronicPurse < ActiveRecord::Base
  belongs_to :user
end
