class Contract < ActiveRecord::Base
  belongs_to :leader, :class_name => 'User'
  belongs_to :project

  OPTIONS_FOR_STATUS = %w(prospecting accepted canceled)

  validates_presence_of :name
  validates_presence_of :code
  validates_presence_of :description
  validates_presence_of :started_at
  validates_presence_of :leader_id
  validates_presence_of :project_id
  validates_inclusion_of :status, :in => OPTIONS_FOR_STATUS

end
