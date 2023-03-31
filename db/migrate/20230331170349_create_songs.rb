class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :album
      t.string :artist
      t.integer :year

      t.timestamps
    end
  end
end


# Song.new(title: "September", album: "Single", artist: "Earth, Wind & Fire", year: 1978)