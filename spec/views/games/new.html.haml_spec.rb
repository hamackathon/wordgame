require 'spec_helper'

describe "games/new" do
  before(:each) do
    assign(:game, stub_model(Game,
      :user1_id => 1,
      :user2_id => 1,
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", games_path, "post" do
      assert_select "input#game_user1_id[name=?]", "game[user1_id]"
      assert_select "input#game_user2_id[name=?]", "game[user2_id]"
      assert_select "input#game_status[name=?]", "game[status]"
    end
  end
end
