# == Schema Information
#
# Table name: project_tasks
#
#  id         :integer          not null, primary key
#  name       :string
#  status     :integer
#  dateline   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ProjectTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
