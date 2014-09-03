class RecipesController < ApplicationController
  def index
    if params[:id]
      @contributor = Contributor.find(params[:id])
      @recipes = @contributor.recipes
    else
      @recipes = Recipe.all
    end
    render('recipes/index.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end

  def create
    @recipe = Recipe.create(params[:recipe])
    @tag = Tag.find(params[:tag_id])
    @recipe.tags << @tag
    if @recipe.save
      flash[:notice] = "Your recipe was added."
      redirect_to('/recipes')
    else
      flash[:notice] = "Your recipe was not added."
      render('recipes/new.html.erb')
    end
  end

  def delete
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:notice] = "Your recipe was deleted."
    redirect_to('/recipes')
  end

  def edit
    @recipe = Recipe.find(params[:id])
    flash[:notice] = "Your recipe was updated."
    render('recipes/edit.html.erb')
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(params[:recipe])
      flash[:notice] = "Your recipe was updated."
      redirect_to('/recipes')
    else
      render('recipes/edit.html.erb')
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render('recipes/show.html.erb')
  end

end
