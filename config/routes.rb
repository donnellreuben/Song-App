Rails.application.routes.draw do
  get "/songs" => "songs#index"
  get "/one-song" => "songs#first_song"
  post  "/songs" => "songs#create"
  get "/songs/:id" => "songs#show"
end
