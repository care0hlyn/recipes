class TagsController < ApplicationController
  def index
    @tags = Tag.all
    render('tags/index.html.erb')
  end

  def new
    @tag = Tag.new
    render('tags/new.html.erb')
  end

  def create
    @tag = Tag.create(params[:tag])
    if @tag.save
      flash[:notice] = "Your tag was added."
      redirect_to('/tags')
    else
      render('tags/new.html.erb')
    end
  end

  def delete
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash[:notice] = "Your tag was deleted."
    redirect_to('tags/index.html.erb')
  end

end
