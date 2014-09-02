class ContributorsController < ApplicationController
  def index
    @contributors = Contributor.all
    render('contributors/index.html.erb')
  end

  def new
    @contributor = Contributor.new
    render('contributors/new.html.erb')
  end

end
