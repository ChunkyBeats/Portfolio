class ReferencesController < ApplicationController
  def index
    @references = Reference.all
    @reference = Reference.new
  end

  def new
    @reference = Reference.new
  end

  def create
    @references = Reference.all
    @reference = Reference.create!(reference_params)
    current_user.references << @reference
    respond_to do |format|
      format.html { redirect_to references_path }
      format.js
    end
  end

  private
  def reference_params
    params.require(:reference).permit(:endorsement)
  end

end
