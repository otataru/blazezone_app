require 'spec_helper'

describe Role do
  subject { Factory.create(:role) }
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
end
