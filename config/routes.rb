Rails.application.routes.draw do
  # get "/songs" => "songs#index"             #1. GET /songs.json
  # get "/one-song" => "songs#first_song"     #2. GET /one-song.json
  # post  "/songs" => "songs#create"          #3. POST /songs edit them wil body (form) HTTPie
  # get "/songs/:id" => "songs#show"          #4. GET /songs/id#.json 
  # patch "/songs/:id" => "songs#update"      #5. PATCH /songs/:id#.json do same as #3
  # delete "/songs/:id" => "songs#destroy"    #6. DELETE /songs/:id#.json delete a song
  resources :songs
end


# 1. INDEX      -display all the songs
# 2. FIRST_SONG -displays the first song
# 3. CREATE     -creates a new song
# 4. SHOW       -displays a specific song by id #
# 5. UPDATE     -updates a specific song
# 6. DELETE     -deletes a specific song