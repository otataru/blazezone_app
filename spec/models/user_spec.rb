require 'spec_helper'

describe User do
  subject { Factory.create(:user) }
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email }
  it { should_not allow_value("ovi").for (:email) }
  it { should allow_value("o@b.com").for (:email) }
end
