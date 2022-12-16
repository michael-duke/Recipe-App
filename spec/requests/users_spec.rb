require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before :each do
    User.create([
                  { name: 'Samiullah', email: 'samiullahk997@gmail.com', password: 'samiullahk997' },
                  { name: 'Michael', email: 'michael@rebels.com', password: 'michael' }
                ])

    get users_path
  end

  it 'assigns all users to @users' do
    expect(assigns(:users)).to eq(User.all.order(:id))
  end

  it 'is a success' do
    expect(response).to have_http_status(:ok)
  end
  it "renders 'index' template" do
    expect(response).to render_template('index')
  end
end
