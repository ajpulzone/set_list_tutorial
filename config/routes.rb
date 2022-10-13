Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/songs", to: "songs#index"
  get "/songs/:id", to: "songs#show"
  get "/artists/:artist_id/songs", to: "artist_songs#index"


  #get "/show/:me/the/songs", to: "songs#display_them"
  #above would match localhost:3000/show/jamison/the/songs
  #above would match localhost:3000/show/202523095720/the/songs
  #:me is a dynamic segment, can be anything contained within that segment, called dynamic routing
  
end
