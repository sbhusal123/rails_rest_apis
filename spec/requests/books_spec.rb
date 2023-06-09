require 'rails_helper'

describe 'Books API', type: :request do

    describe 'GET /books' do

        before do
            FactoryBot.create(:book, title: 'Book1', author: 'Geor')
            FactoryBot.create(:book, title: 'Time3', author: 'H.G')
        end

        it 'returns all books' do
            get '/api/v1/books'
    
            expect(response).to  have_http_status(:success)
            expect(JSON.parse(response.body).size).to eq(2)
        end
    end

    describe 'POST /books' do
            it 'create a new book' do
                expect {
                    post '/api/v1/books', params: { book: {title: 'T122', author: 'A333'} }
            }.to change {Book.count}.from(0).to(1)

            expect(response).to have_http_status(:created)
        end
    end

    describe 'DELETE /books/:id' do
        it 'deletes a book' do
            book = FactoryBot.create(:book, title: "Tit1", author: "Aut1")

            expect {
                delete "/api/v1/books/#{book.id}"
            }.to change {Book.count}.from(1).to(0)

            expect(response).to have_http_status(:no_content)
        end
    end

end
