require('minitest/autorun')
require('minitest/reporters')
require_relative('../team_class')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeamClass < MiniTest::Test
  def setup
    @team = Team.new("Rangers", ["Bob", "John"], "Frank")
  end
end
