require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  before :each do
    @user = User.create(name: 'Samiullah', email: 'samiullahk997@gmail.com', password: 'samiullahk997')
    
    recipes = Recipe.create([
      {user: @user, name: 'Potatoe Salad', description: 'A delicious potatoe salad', preparation_time: 10, cooking_time: 20, public: true},
      {user: @user, name: 'Cheery Pie', description: 'A delicious cheery pie', preparation_time: 20, cooking_time: 30, public: true}
  ])
    get user_recipes_path(@user)
  end

  it "assigns all users to @users" do
   expect(assigns(:recipes)).to eq(@user.recipes)
  end

  it "is a success" do
    expect(response).to have_http_status(:ok)
  end
  it "renders 'index' template" do
    expect(response).to render_template('index')
  end
end