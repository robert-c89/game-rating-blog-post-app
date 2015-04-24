require 'rails_helper'

RSpec.describe "games/edit", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :name => "MyString",
      :publisher => "MyString",
      :release_date => "MyString"
    ))
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "input#game_name[name=?]", "game[name]"

      assert_select "input#game_publisher[name=?]", "game[publisher]"

      assert_select "input#game_release_date[name=?]", "game[release_date]"
    end
  end
end
