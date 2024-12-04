require "application_system_test_case"

class CombinesTest < ApplicationSystemTestCase
  setup do
    @combine = combines(:one)
  end

  test "visiting the index" do
    visit combines_url
    assert_selector "h1", text: "Combines"
  end

  test "should create combine" do
    visit combines_url
    click_on "New combine"

    fill_in "Bench", with: @combine.bench
    fill_in "Broad jump", with: @combine.broad_jump
    fill_in "Cfb", with: @combine.cfb_id
    fill_in "Cone", with: @combine.cone
    fill_in "Draft ovr", with: @combine.draft_ovr
    fill_in "Draft round", with: @combine.draft_round
    fill_in "Draft team", with: @combine.draft_team
    fill_in "Draft year", with: @combine.draft_year
    fill_in "Forty", with: @combine.forty
    fill_in "Ht", with: @combine.ht
    fill_in "Pfr", with: @combine.pfr_id
    fill_in "Player name", with: @combine.player_name
    fill_in "Pos", with: @combine.pos
    fill_in "School", with: @combine.school
    fill_in "Season", with: @combine.season
    fill_in "Shuttle", with: @combine.shuttle
    fill_in "Vertical", with: @combine.vertical
    fill_in "Wt", with: @combine.wt
    click_on "Create Combine"

    assert_text "Combine was successfully created"
    click_on "Back"
  end

  test "should update Combine" do
    visit combine_url(@combine)
    click_on "Edit this combine", match: :first

    fill_in "Bench", with: @combine.bench
    fill_in "Broad jump", with: @combine.broad_jump
    fill_in "Cfb", with: @combine.cfb_id
    fill_in "Cone", with: @combine.cone
    fill_in "Draft ovr", with: @combine.draft_ovr
    fill_in "Draft round", with: @combine.draft_round
    fill_in "Draft team", with: @combine.draft_team
    fill_in "Draft year", with: @combine.draft_year
    fill_in "Forty", with: @combine.forty
    fill_in "Ht", with: @combine.ht
    fill_in "Pfr", with: @combine.pfr_id
    fill_in "Player name", with: @combine.player_name
    fill_in "Pos", with: @combine.pos
    fill_in "School", with: @combine.school
    fill_in "Season", with: @combine.season
    fill_in "Shuttle", with: @combine.shuttle
    fill_in "Vertical", with: @combine.vertical
    fill_in "Wt", with: @combine.wt
    click_on "Update Combine"

    assert_text "Combine was successfully updated"
    click_on "Back"
  end

  test "should destroy Combine" do
    visit combine_url(@combine)
    click_on "Destroy this combine", match: :first

    assert_text "Combine was successfully destroyed"
  end
end
