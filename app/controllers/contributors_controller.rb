class ContributorsController < ApplicationController
  def index
    @contributors = Contributor.all
    render('contributors/index.html.erb')
  end

end
