class UsersController < ApplicationController

  def add_book
    @user = current_user
    @book = Book.find(params[:book_id])
    @user.shopping_cart.add(@book)
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
    @user.shopping_cart.contents
  end

end
