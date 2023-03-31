Rails.application.routes.draw do
  get "/songs" => "songs#index"
  get "/one-song" => "songs#first_song"
  post  "/songs" => "songs#create"
  get "/songs/:id" => "songs#show"
  patch "/songs/:id" => "songs#update"
  delete "/songs/:id" => "songs#destroy"
end
