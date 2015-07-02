require 'rails_helper'

describe "the create a skill process" do
  it "adds a new skill!" do
    visit skills_path
    click_on 'Add a Skill'
    fill_in 'Name', :with => 'Cobalt'
    fill_in 'Description', :with => 'Haha, just kidding.  No one uses this'
    click_on 'Create Skill'
    expect(page).to have_content 'Cobalt'
  end
end
