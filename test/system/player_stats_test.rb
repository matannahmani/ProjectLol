require "application_system_test_case"

class PlayerStatsTest < ApplicationSystemTestCase
  setup do
    @player_stat = player_stats(:one)
  end

  test "visiting the index" do
    visit player_stats_url
    assert_selector "h1", text: "Player Stats"
  end

  test "creating a Player stat" do
    visit player_stats_url
    click_on "New Player Stat"

    fill_in "Player", with: @player_stat.player_id
    fill_in "Rate", with: @player_stat.rate
    fill_in "Stat", with: @player_stat.stat_id
    click_on "Create Player stat"

    assert_text "Player stat was successfully created"
    click_on "Back"
  end

  test "updating a Player stat" do
    visit player_stats_url
    click_on "Edit", match: :first

    fill_in "Player", with: @player_stat.player_id
    fill_in "Rate", with: @player_stat.rate
    fill_in "Stat", with: @player_stat.stat_id
    click_on "Update Player stat"

    assert_text "Player stat was successfully updated"
    click_on "Back"
  end

  test "destroying a Player stat" do
    visit player_stats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Player stat was successfully destroyed"
  end
end
