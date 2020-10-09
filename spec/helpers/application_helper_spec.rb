require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the AuthorsHelper. For example:
#
# describe AuthorsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, type: :helper do

  
  # describe 'authentication navbar view helper' do
  #   before(:example) do
  #     @signed_author = Author.create!(username: 'exempleusername', email: 'foo@bar.com', password: 'foobar', password_confirmation: 'foobar')
  #     @signed_in = true
  #   end
  #   it 'should return an html that contain the signed_in author email' do
  #     expect(helper.authentication_view_helper(@signed_in, @signed_author)).to match /foo@bar.com/
  #     # expect(helper.authentication_view_helper(@signed_in, @signed_author)).to hav_tag('nav-list__link', text: 'foo@bar.com')
  #   end
  # end

  describe 'flash html div class naming helpers' do
    it 'should return the correct class name for :notice' do
      expect(helper.flash_class_helper('notice')).to match /success/
    end

    it 'should return the correct class name for :success' do
      expect(helper.flash_class_helper('success')).to match /success/
    end

    it 'should return the correct class name for :error' do
      expect(helper.flash_class_helper('error')).to match /danger/
    end

    it 'should return the correct class name for :alert' do
      expect(helper.flash_class_helper('alert')).to match /danger/
    end

    it 'should return the correct class name for :warning' do
      expect(helper.flash_class_helper('warning')).to match /warning/
    end

  end

  describe 'flash message prefix helper' do
    it 'should return the correct prefix for :notice flsah type of message' do
      expect(helper.flash_prefix_helper('notice')).to match /Notice!/
    end

    it 'should return the correct prefix for :success flsah type of message' do
      expect(helper.flash_prefix_helper('success')).to match /Success!/
    end

    it 'should return the correct prefix for :error flsah type of message' do
      expect(helper.flash_prefix_helper('error')).to match /Error!/
    end

    it 'should return the correct prefix for :alert flsah type of message' do
      expect(helper.flash_prefix_helper('alert')).to match /Alert!/
    end

    it 'should return the correct prefix for :warning flsah type of message' do
      expect(helper.flash_prefix_helper('warning')).to match /Warning!/
    end

  end

end
