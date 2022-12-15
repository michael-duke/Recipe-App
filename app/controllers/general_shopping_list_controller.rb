class GeneralShoppingListController < ApplicationController
  before_action :set_recipe, only: [:index]
  before_action :set_user, only: [:index]

  def index
    @recipe_foods = @recipe.recipe_foods.includes(:food).order(:id)

    @missing_ingredients = @recipe_foods.select { |ingredient| ingredient.quantity > ingredient.food.quantity }
    @missing_ingredients = @missing_ingredients.map do |ingredient|
      {
        name: ingredient.food.name,
        unit: ingredient.food.measurement_unit,
        quantity: ingredient.quantity - ingredient.food.quantity,
        price: ingredient.food.price * (ingredient.quantity - ingredient.food.quantity)
      }
    end

    @total_price = @missing_ingredients.map { |ingredient| ingredient[:price] }.sum
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:user_id])
  end

  def set_recipe
    @recipe = set_user.recipes.find(params[:recipe_id])
  end
end
