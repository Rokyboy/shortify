require 'rails_helper'

RSpec.describe ShortiesController, type: :controller do
    routes { Rails.application.routes }

    let(:count) { Shorty.count }

    describe 'POST #create' do
        it 'shorty should have count 0' do
            expect(count).to eq(0)
        end

        it 'shorty should have count 0' do
            post :create, params: { shorty: { url: 'test_url.com' }}

            expect(count).to eq(1)
        end
    end
end
