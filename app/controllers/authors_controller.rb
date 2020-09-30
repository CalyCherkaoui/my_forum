class AuthorsController < ApplicationController
  before_action :authors_signed_in?, only: %i[edit destroy]

  def index
    @authors = Authors.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def destroy
    author = Author.find(params[:id])
    if author
      author.destroy
      redirect_to authors_path, notice: 'Author count successfully deleted'
    else
      redirect_to authors_path, alert: 'Author count not founded'
    end
  end

  private

  def user_params
    params.require(:authors).permit(:id, :name, :username, :email, :password, :password_confirmation)
  end
end
