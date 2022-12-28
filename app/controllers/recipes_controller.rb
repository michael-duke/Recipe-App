class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show destroy]
  before_action :set_user, only: %i[index show create]

  # GET /recipes or /recipes.json
  def index
    @recipes = @user.recipes
  end

  # GET /recipes/1 or /recipes/1.json
  def show
    @recipe_foods = @recipe.recipe_foods.includes(:food, :recipe).order(:id)
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end

  # POST /recipes or /recipes.json
  def create
    @recipe = Recipe.new(user: current_user, **recipe_params)

    if @recipe.save
      redirect_to user_recipes_url, notice: 'Recipe was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
    redirect_to user_recipes_url
  end

  # DELETE /recipes/1 or /recipes/1.json
  def destroy
    @recipe.destroy
    redirect_to user_recipes_url, notice: 'Recipe was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:user_id])
  end

  def set_recipe
    @recipe = set_user.recipes.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
