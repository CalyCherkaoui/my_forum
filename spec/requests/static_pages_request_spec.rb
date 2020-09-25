require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  def setup
    @page_title = ' | Gourmet Blog'

  end

  describe 'GET #home' do

    before(:example) { get static_pages_home_path }

    it 'successfully get the home page' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders home template' do
      expect(response).to render_template('home')
    end

    it 'The rendred Html has the right title' do
      expect(response.body).to include("Home#{@page_title}")
    end

  end

  describe 'GET #about' do

    before(:example) { get static_pages_about_path }

    it 'successfully get the about page' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders about template' do
      expect(response).to render_template('about')
    end

    it 'The rendred Html has the right title' do
      expect(response.body).to include("About#{@page_title}")
    end

  end

end
