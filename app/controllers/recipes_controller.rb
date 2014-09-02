class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render('recipes/index.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end

  def create
    @recipe = Recipe.create(params[:recipe])
    if @recipe.save
      redirect_to('/recipes')
    else
      render('recipes/new.html.erb')
    end
  end

end
