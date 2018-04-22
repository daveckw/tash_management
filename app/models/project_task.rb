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

class ProjectTask < ApplicationRecord

  enum status: {'In progress': 0, 'Done': 1, 'Cancelled': 2}
end
