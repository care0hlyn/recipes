Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'recipes#index'})
  match('/recipes', {:via => :get, :to => 'recipes#index'})
  match('/recipes/new', {:via => :get, :to => 'recipes#new'})
  match('/recipes', {:via => :post, :to => 'recipes#create'})
  match('/recipes/:id', {:via => :delete, :to => 'recipes#delete'})
  match('/recipes/:id/edit', {:via => :get, :to => 'recipes#edit'})
  match('/recipes/:id', {:via => [:patch, :put], :to => 'recipes#update'})

  match('/contributors', {:via => :get, :to => 'contributors#index'})
  match('/contributors/new', {:via => :get, :to => 'contributors#new'})
  match('/contributors', {:via => :post, :to => 'contributors#create'})
  match('/contributors/:id', {:via => :delete, :to => 'contributors#delete'})
  match('/contributors/:id/edit', {:via => :get, :to => 'contributors#edit'})
  match('/contributors/:id', {:via => [:patch, :put], :to => 'contributors#update'})
  match('contributors/:id/recipes', {:via => :get, :to => 'recipes#index'})

  match('/tags', {:via => :get, :to => 'tags#index'})
end
