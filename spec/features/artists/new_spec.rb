# As a visitor
# When I visit the artists indexand click on "New Artist"
# Then my current path is "/artists/new"
# and I fill in the artist's name
# Then  I click "Create Artist"
# I am redirected to this new artists show page

require "rails_helper"

RSpec.describe "the Artist creation" do
  it "links to the new page from the artists index" do
    visit "/artists"

    click_link ("New Artist")
    expect(current_path).to eq("/artists/new")
  end

  it "can create a new artist" do
    visit "/artists/new"

    #fill_in("field", with: "value") This is how we fill out a form 
    #for testing
    fill_in("Name", with: "Prince")
    #click the button to create the new artist (will activate the new file path)
    click_button("Create Artist")

    #Make a new variable to store the artist id of the artist we just created
    # new_artist_id = Artist.last.id    (removed this because we did not 
    #reroute to the artist/artist_id page)
    expect(current_path).to eq("/artists")
    expect(page).to have_content("Prince")
  end
end
# /Users/ajpulzone/Turing/mod_2/classwork/set_list/spec