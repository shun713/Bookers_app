class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_show_path(@book.id), notice: "The Book was successfully saved."
    else
      @books = Book.all
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_show_path(@book.id), notice: "The Book was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      redirect_to books_path, notice: "The Book was successfully deleated."
    else
      render :index
    end
  end


  private

  def book_params
    params.require(:book).permit(:title,:body)
  end
end
