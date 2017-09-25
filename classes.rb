class Student
  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def update_name(new_name)
    @name = new_name
  end

  def update_cohort(new_cohort)
    @cohort = new_cohort
  end

  def ability_to_talk(sentence)
    return sentence
  end

  def say_fav_language(language)
    return "My favourite language is #{language}"
  end

end
