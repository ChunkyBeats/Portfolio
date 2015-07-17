class Reference < ActiveRecord::Base
  validates_presence_of :endorsement
  belongs_to :user
end
