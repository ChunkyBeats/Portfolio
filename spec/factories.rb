FactoryGirl.define do
  factory(:user) do
    username('robotsscareme')
    email('bleh@test.com')
    password('gobbledegook')
    admin(true)
  end
end
