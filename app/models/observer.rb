require 'observer'

class BookObserver
  include Observable

  att_reader :book_count

  def init(book_count = @books.count)
    @book_count = book_count
    add_observer(Notifier.new)
  end

  def log(new_book)
    @book_count += new_book
    changed
    notify_observers(self, new_book)
  end

end
