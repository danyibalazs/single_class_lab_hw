class Team
  attr_reader :team_name, :players_array
  attr_accessor :coach_name
  def initialize(team_name, players_array, coach_name)
    @team_name = team_name
    @players_array = players_array
    @coach_name = coach_name
  end

  def add_new_player(new_player)
    @players_array.push(new_player)
  end

  def is_player_in_team?(name)
    for player in @players_array
      if player == name
        return true
      else
        return false
      end
    end
  end
  
end
