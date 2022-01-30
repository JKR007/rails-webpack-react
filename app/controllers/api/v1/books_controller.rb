class Api::V1::BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    render json: Book.all.order(published_date: :desc)
  end

  def show
    if @book
      render json: @book
    else
      render json: @book.errors
    end
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def update
    if @book.update(book_params)
      render json: {notice: 'Book has been updated successfully.'}
    else
      render json: @book.errors
    end
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: @book
    else
      render json: @book.errors
    end
  end

  def destroy
    @book.destroy
    render json: {notice: 'Book has been deleted successfully.'}
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.permit(:name, :author, :description, :quantity, :published_date)
  end
end
