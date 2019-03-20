class BookreviewsController < ApplicationController

before_action :find_book

  def new
		@bookreviews = Bookreview.new
  end

  def create
    @bookreviews = Bookreview.new(bookreview_params)
    @bookreviews.book_id = @book.id
    @bookreviews.user_id = current_user.id

    if @bookreviews.save
			redirect_to book_path(@book)
		else
			render 'new'
    end
  end

  private

		def bookreview_params
			params.require(:bookreview).permit(:book_rating, :user_comment)
    end

    def find_book
			@book = Book.find(params[:book_id])
    end

end
