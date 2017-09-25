require ( "minitest/autorun" )
require_relative ( "../library")

class TestLibrary < MiniTest::Test

def setup

  @books = [
    {
    title: "Under the Sun",
    rental_details: {
      student_name: "Jane",
      return_date: "01/10/17"
      }
    },
    {
      title: "The Brothers Karamazov",
      rental_details: {
        student_name: "Jim",
        return_date: "25/10/17"
      }
    },
    {
      title: "Steppenwolf",
      rental_details: {
        student_name: "Bob",
        return_date: "03/11/17"
      }
    }
  ]
  end

  def test_list_books
    library = Library.new(@books)
    result = library.list_books
    assert_equal(@books, result)
  end

  def all_info_for_title
    library = Library.new(@books)
    result = library.all_info_for_title("Under the Sun")
    assert_equal({
    title: "Under the Sun",
    rental_details: {
      student_name: "Jane",
      return_date: "01/10/17"
      }
    }, result)
  end

  def test_rental_info_for_title
    library = Library.new(@books)
    result = library.rental_info_for_title("Steppenwolf")
    assert_equal({
      student_name: "Bob",
      return_date: "03/11/17"}, result)
  end

  def test_add_title_to_library
    library = Library.new(@books)
    library.add_title_to_library("Multitude")
    result = @books.length
    assert_equal(4, result)
  end

  def test_change_rental_details
    library = Library.new(@books)
    library.change_rental_details("The Brothers Karamazov", "Steve", "29/10/17")
    result = @books[1]
    assert_equal(    {
          title: "The Brothers Karamazov",
          rental_details: {
            student_name: "Steve",
            return_date: "29/10/17"
          }
        }, result)
  end
end
