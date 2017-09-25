
class SportsTeam
  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def team_name
    return @team_name
  end

  def players
    return @players
  end

  def coach
    return @coach
  end

  def points
    return @points
  end

  def update_coach(new_coach)
    @coach = new_coach
  end

  def add_player(new_player)
    @players << new_player
  end

  def check_player(player)
    return true if @players.include?(player)
    return false if !@players.include?(player)
  end

  def win_or_lose(result)
    return @points += 1 if result == "win"
    return @points if result == "lose"
    #why do I get nil if I leave this second return off?
  end


end
