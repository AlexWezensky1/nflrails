require "test_helper"

class CombinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @combine = combines(:one)
  end

  test "should get index" do
    get combines_url
    assert_response :success
  end

  test "should get new" do
    get new_combine_url
    assert_response :success
  end

  test "should create combine" do
    assert_difference("Combine.count") do
      post combines_url, params: { combine: { bench: @combine.bench, broad_jump: @combine.broad_jump, cfb_id: @combine.cfb_id, cone: @combine.cone, draft_ovr: @combine.draft_ovr, draft_round: @combine.draft_round, draft_team: @combine.draft_team, draft_year: @combine.draft_year, forty: @combine.forty, ht: @combine.ht, pfr_id: @combine.pfr_id, player_name: @combine.player_name, pos: @combine.pos, school: @combine.school, season: @combine.season, shuttle: @combine.shuttle, vertical: @combine.vertical, wt: @combine.wt } }
    end

    assert_redirected_to combine_url(Combine.last)
  end

  test "should show combine" do
    get combine_url(@combine)
    assert_response :success
  end

  test "should get edit" do
    get edit_combine_url(@combine)
    assert_response :success
  end

  test "should update combine" do
    patch combine_url(@combine), params: { combine: { bench: @combine.bench, broad_jump: @combine.broad_jump, cfb_id: @combine.cfb_id, cone: @combine.cone, draft_ovr: @combine.draft_ovr, draft_round: @combine.draft_round, draft_team: @combine.draft_team, draft_year: @combine.draft_year, forty: @combine.forty, ht: @combine.ht, pfr_id: @combine.pfr_id, player_name: @combine.player_name, pos: @combine.pos, school: @combine.school, season: @combine.season, shuttle: @combine.shuttle, vertical: @combine.vertical, wt: @combine.wt } }
    assert_redirected_to combine_url(@combine)
  end

  test "should destroy combine" do
    assert_difference("Combine.count", -1) do
      delete combine_url(@combine)
    end

    assert_redirected_to combines_url
  end
end
