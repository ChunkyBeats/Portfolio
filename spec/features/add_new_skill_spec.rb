require 'rails_helper'

describe "the create a new skill process" do
  it "adds a new skill!" do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Sign Up'
    fill_in 'Username', with: user.username
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password
    click_on 'Sign up'
    user.update(admin: true)
    expect(user.admin).to eq(true)
    visit new_skill_path
    fill_in 'Name', with: 'Ruby'
    fill_in 'Description', with: 'My first language at Epicodus'
    click_on 'Create Skill'

    expect(page).to have_content("Ruby")
  end
end
