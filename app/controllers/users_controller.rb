class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :ensure_current_user, {only: [:edit,:update,:destroy]}

  def index
    @users =User.all
    @books = Book.all
    @book = Book.new
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = 'You have updated user successfully.'
      redirect_to user_path(@user)
    else
      # flash[:notice] = "error."　(変更前)
      flash[:notice]
      render :edit
    end

  end

  private

  def book_params
      params.require(:book).permit(:title, :body)
  end

  def user_params
    params.require(:user).permit(:name, :profile_image , :introduction)
  end

  def  ensure_current_user
        @user = User.find(params[:id])

    if @user.id != current_user.id
      redirect_to user_path(current_user.id)
    end

  end

end