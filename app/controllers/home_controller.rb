class HomeController < ApplicationController
  def index
    @skills = Skill.all
    @references = Reference.all
  end
end
