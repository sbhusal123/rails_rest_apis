require 'rails_helper'

describe 'Books API', type: :request do
    it 'returns all books' do
        FactoryBot.create(:book, title: 'Book1', author: 'Geor')
        FactoryBot.create(:book, title: 'Time3', author: 'H.G')
        get '/api/v1/books'
        expect(response).to  have_http_status(:success)
        expect(JSON.parse(response.body).size).to eq(2)
    end
end
