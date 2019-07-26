Rails.application.routes.draw do

  get "/articles/again_new" => "articles#mynew", as: :my_n_article
  post "/articles/again_create" => "articles#mycreate", as: :my_c_article
  get "/articles/again_edit/:dke"  => "articles#myedit", as: :my_e_article
  get "/articles/again/:dks" => "articles#myshow", as: :my_s_article
  get "/articles/again_index" => "articles#myindex", as: :my_i_article
  patch "/articles/again_upd/:dku"  => "articles#myupd", as: :my_u_article
  delete "articles/again_del/:dkd" => "articles#mydel", as: :my_d_article

  #get "/gaurs/new"	=> "gaurs#new", as: :gaur_new
  #resources :gaurs

  get 'dk/index'
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dk#index'


end

