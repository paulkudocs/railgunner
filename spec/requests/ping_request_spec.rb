require 'rails_helper' 

RSpec.describe 'Ping Request', type: :request do 
    it 'Returns a 200 status code' do 
        get '/ping'
        expect(response).to have_http_status(200) 
    end 

    it 'Returns a 401 status code if not logged in' do 
        get '/ping/auth' 
        expect(response).to have_http_status(401)
   
    end
   it 'Returns a 200 status code if logged in' do 
        user = create(:user) 
        headers = get_headers(user.email) 
        get '/ping/auth', headers: headers 
        expect(response).to have_http_status(200) 
    end 
end