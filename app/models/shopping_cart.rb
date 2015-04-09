class ShoppingCart
  def initialize(user)
    @user = user
  end

  def add(book)
    contents << book
  end

  def contents
    []
  end
end
