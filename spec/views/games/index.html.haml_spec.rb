require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        :name => "Name",
        :publisher => "Publisher",
        :release_date => "Release Date"
      ),
      Game.create!(
        :name => "Name",
        :publisher => "Publisher",
        :release_date => "Release Date"
      )
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
    assert_select "tr>td", :text => "Release Date".to_s, :count => 2
  end
end
