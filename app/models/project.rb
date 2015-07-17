class Project < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true

  has_and_belongs_to_many :skills
end
