# == Schema Information
#
# Table name: remarks
#
#  id         :integer          not null, primary key
#  remark     :text
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Remark < ApplicationRecord
end
