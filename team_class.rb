class Team
  def initialize(team_name, players_array, coach_name)
    @team_name = team_name
    @players_array = players_array
    @coach_name = coach_name
  end

  def get_team_name
    return @team_name
  end
  def get_players
    return @players_array
  end
  def get_coach_name
    return @coach_name
  end
end
