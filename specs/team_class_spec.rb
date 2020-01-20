require('minitest/autorun')
require('minitest/reporters')
require_relative('../team_class')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeamClass < MiniTest::Test
  def setup
    @team = Team.new("Rangers", ["Bob", "John"], "Frank")
  end

  def test_get_team_name
    assert_equal("Rangers", @team.get_team_name)
  end

  def test_get_players
    assert_equal(["Bob", "John"], @team.get_players)
  end

  def test_get_coach_name
    assert_equal("Frank", @team.get_coach_name)
  end

  def test_set_coach_name
    @team.set_coach_name("James")
    assert_equal("James", @team.get_coach_name)
  end
end
