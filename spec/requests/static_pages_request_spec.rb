require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  describe 'GET #home' do

    before(:example) { get static_pages_home_path }

    it 'successfully get the home page' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders home template' do
      expect(response).to render_template('home')
    end

  end

end
