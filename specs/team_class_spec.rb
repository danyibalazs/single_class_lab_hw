require('minitest/autorun')
require('minitest/reporters')
require_relative('../team_class')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeamClass < MiniTest::Test
  def setup
    @team = Team.new("Rangers", ["Bob", "John"], "Frank")
  end

  def test_get_team_name
    assert_equal("Rangers", @team.team_name)
  end

  def test_get_players
    assert_equal(["Bob", "John"], @team.players_array)
  end

  def test_get_coach_name
    assert_equal("Frank", @team.coach_name)
  end

  def test_set_coach_name
    @team.coach_name = "James"
    assert_equal("James", @team.coach_name)
  end

  def test_add_new_player
    @team.add_new_player("Joe")
    assert_equal(3, @team.players_array.count())
  end

  def test_is_player_in_team__true
    assert_equal(true, @team.is_player_in_team?("Bob"))
  end

  def test_is_player_in_team__false
    assert_equal(false, @team.is_player_in_team?("Mark"))
  end
end
