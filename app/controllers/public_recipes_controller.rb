class PublicRecipesController < ApplicationController
  before_action :public_recipes, only: [:index]

  def index
    @public_recipes
  end

  private

  def public_recipes
    @public_recipes ||= Recipe.includes([:user]).where(public: true).order(created_at: :desc)
  end
end
