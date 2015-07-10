require 'rails_helper'
require 'spec_helper'

describe User do
  it { should validate_presence_of :username }
  it { should validate_uniqueness_of :email }


end
