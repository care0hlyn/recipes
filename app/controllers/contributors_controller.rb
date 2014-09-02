class ContributorsController < ApplicationController
  def index
    @contributors = Contributor.all
    render('contributors/index.html.erb')
  end

  def new
    @contributor = Contributor.new
    render('contributors/new.html.erb')
  end

  def create
    @contributor = Contributor.create(params[:contributor])
    if @contributor.save
      redirect_to('/contributors')
    else
      render('contributors/index.html.erb')
    end
  end

  def delete
    @contributor = Contributor.find(params[:id])
    @contributor.destroy
    redirect_to('/contributors')
  end

end
