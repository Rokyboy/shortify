require 'rails_helper'

RSpec.describe RedirectsController, type: :controller do
    routes { Rails.application.routes }

    let!(:shorty) { create(:shorty) }

    describe 'GET #show' do
        before { get :show, params: { id: shorty.short_url }}

        it 'should redirect to origin url' do
            response.should redirect_to shorty.url
        end
    end
end
