require 'rails_helper'

describe "the create a user process" do
  it "adds a new user!" do
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
  end
end
