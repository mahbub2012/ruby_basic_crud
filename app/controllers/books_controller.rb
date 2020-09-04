class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find params[:id]
  end

  def new
    @subjects = Subject.all
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_url
    else
      @subjects = Subject.all
      render 'books/new'
    end
  end

  def edit
    @book = Book.find params[:id]
    @subjects = Subject.all
  end

  def update
    @book = Book.find params[:id]

    if @book.update_attributes(book_param)
      redirect_to books_url
    else
      @subjects = Subject.all
      render 'books/edit'
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to books_url
  end


  private

  def book_params
    params.permit(:title, :price, :subject_id, :description)
  end

  def book_param
    params.permit(:title, :price, :subject_id, :description)
  end
end
