class TagsController < ApplicationController
  def index
    @tags = Tag.all
    render('tags/index.html.erb')
  end
end
