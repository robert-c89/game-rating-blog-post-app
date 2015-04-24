require 'rails_helper'

RSpec.describe "games/show", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :name => "Name",
      :publisher => "Publisher",
      :release_date => "Release Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Publisher/)
    expect(rendered).to match(/Release Date/)
  end
end
