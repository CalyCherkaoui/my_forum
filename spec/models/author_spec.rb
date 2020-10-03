require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'email validations' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email)}
    it { should_not allow_value("not an email").for(:email) }
    it { should allow_value("user@exeple.com").for(:email) }
  end
end
