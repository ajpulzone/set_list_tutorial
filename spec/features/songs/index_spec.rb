##These are feature tests##

require "rails_helper"

RSpec.describe "the Songs index page", type: :feature do
  #for the decsribe test in feature tests to copy/paste the lines of the user story"
  describe "As a user" do
    describe "when I visit '/songs'" do
      it "I see each song's title and play count" do
        artist = Artist.create(name: "Carly Rae Jepsen")
        song_1 = artist.songs.create!(title: "I Really Like You", 
                                    length: 208, 
                                    play_count: 2456357)
        song_2 = artist.songs.create!(title: "Call Me Maybe", 
                                      length: 207, 
                                      play_count: 21456357)
        visit "/songs"

        expect(page).to have_content(song_1.title)
        expect(page).to have_content("Play Count: #{song_1.play_count}")
        expect(page).to have_content(song_2.title)
        expect(page).to have_content("Play Count: #{song_2.play_count}")

        save_and_open_page
      end
    end
  end
end
