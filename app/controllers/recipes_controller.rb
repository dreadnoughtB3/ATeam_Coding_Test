class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[ show update destroy ]

  # GET /recipes
  def index
    @recipes = Recipe.all

    render json: { recipes: @recipes }, status: :ok
  end

  # GET /recipes/1
  def show
    render json: { message: "Recipe details by id", recipe: [ @recipe ] }, status: :ok
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      render json: { message: "Recipe successfully created!", recipe: [ @recipe ] }, status: :ok, location: @recipe
    else
      render json: { message: "Recipe creation failed!", required: "title, making_time, serves, ingredients, cost" }, status: :ok
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      render json: { message: "Recipe successfully updated!", recipe: [ @recipe ] }, status: :ok
    else
      render json: @recipe.errors, status: :ok
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
    render json: { message: "Recipe successfully removed!" }, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      begin
        @recipe = Recipe.find(params[:id])
      rescue ActiveRecord::RecordNotFound => e
        render json: { message: "No Recipe found." }, status: :ok
      end
    end

    # Only allow a list of trusted parameters through.
    def recipe_params
      params.permit(:title, :making_time, :serves, :cost, :ingredients)
    end
end
