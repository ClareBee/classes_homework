require ( "minitest/autorun" )
require_relative ( "../classes" )

class TestClasses < MiniTest::Test


  def test_name_and_cohort
    student = Student.new("Bob", 2)
    assert_equal(2, student.cohort())
    assert_equal("Bob", student.name())
  end

  def test_update_name
    student = Student.new("Bob", 2)
    student.update_name("Jill")
    assert_equal("Jill", student.name())
  end

  def test_update_cohort
    student = Student.new("Bob", 2)
    student.update_cohort(3)
    assert_equal(3, student.cohort())
  end

  def test_ability_to_talk
    student = Student.new("Bob", 2)
    result = student.ability_to_talk("I can talk")
    assert_equal("I can talk", result)
  end

  def test_say_fav_language
    student = Student.new("Bob", 2)
    result = student.say_fav_language("Ruby")
    assert_equal("My favourite language is Ruby", result)
  end
end
