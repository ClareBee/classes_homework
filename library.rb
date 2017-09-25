class Library
  def initialize(books)
    @books = books
  end

  def books
    @books = books
  end
# Create a method that list all the books and their corresponding details.
  def list_books
    for book in @books
      book
    end
  end

  # Create a method that takes in a book title and returns all of the information about that book.
  def all_info_for_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
    return "book not found"
  end
  # Create a method that takes in a book title and returns only the rental details for that book.

  def rental_info_for_title(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
    return "book not found"
  end
  # Create a method that takes in a book title and adds it to our book list
  # (Add a new hash for the book with the student name and date being left as empty strings)
  def add_title_to_library(title)
    @books << {title: title, rental_details: {student_name:"", return_date: ""}}
  end

# Create a method that changes the rental details of a book by taking in the title
# of the book, the student renting it and the date it's due to be returned.

  def change_rental_details(title, new_student, new_date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = new_student
        book[:rental_details][:return_date] = new_date
      end
    end
    return "book not found"
  end

end
