require ( "minitest/autorun" )
require_relative ("../sports_team")

class SportTest < MiniTest::Test

  def test_team

  end

  def test_update_coach
    teamA = SportsTeam.new("Tigers", ["Billy", "Sarah", "Philip", "Mark"], "Chris")
    result = teamA.update_coach("Bob")
    assert_equal("Bob", result)
  end

  def test_add_player
    teamA = SportsTeam.new("Tigers", ["Billy", "Sarah", "Philip", "Mark"], "Chris")
    result = teamA.add_player("Tim")
    assert_equal(["Billy", "Sarah", "Philip", "Mark", "Tim"], result)
  end

  def test_if_player_present__true
    teamA = SportsTeam.new("Tigers", ["Billy", "Sarah", "Philip", "Mark"], "Chris")
    result = teamA.check_player("Mark")
    assert_equal(true, result)
  end

  def test_if_player_present__false
    teamA = SportsTeam.new("Tigers", ["Billy", "Sarah", "Philip", "Mark"], "Chris")
    result = teamA.check_player("Fred")
    assert_equal(false, result)
  end

  def test_points_for_winners_and_losers__win
    teamA = SportsTeam.new("Tigers", ["Billy", "Sarah", "Philip", "Mark"], "Chris")
    result = teamA.win_or_lose("win")
    assert_equal(1, result)
  end

  def test_points_for_winners_and_losers__lose
    teamA = SportsTeam.new("Tigers", ["Billy", "Sarah", "Philip", "Mark"], "Chris")
    result = teamA.win_or_lose("lose")
    assert_equal(0, result)
  end
end
