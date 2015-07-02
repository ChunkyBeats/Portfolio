class CreateProjectsSkills < ActiveRecord::Migration
  def change
    create_table :projects_skills do |t|
      t.belongs_to :project, index: true
      t.belongs_to :skill, index: true
    end
  end
end
