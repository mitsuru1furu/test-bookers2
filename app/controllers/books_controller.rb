class BooksController < ApplicationController
  def index
  	  @books = Book.all
  	  @book = Book.new
  	  
  end

  def show
  	  @book = Book.find(params[:id])
  end

  def new
  end

  def edit
  end
  def create
  	  @book = Book.new(book_params)
  	  @books = Book.all
  	  @book.user_id = current_user.id
  	if  @book.save
  	  redirect_to books_path
  	else
  	  render :index 
  	end
  end
  private
  def book_params
  	  params.require(:book).permit(:titl,:opinion)
  end
end
