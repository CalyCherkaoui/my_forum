require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'email validations' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
    it { should_not allow_value("not an email").for(:email) }
    it { should allow_value("user@exeple.com").for(:email) }
  end

  describe 'username validation' do
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
  end
end
