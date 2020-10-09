class AuthorsController < ApplicationController
  before_action :authenticate_author! , except: %i[index show]
  before_action :set_author, except: %i[index]

  # GET /authors
  def index
    @authors = Author.all
  end

  # Get /authors/1
  def show
  end

  # Get /authors/new
  # def new
  #   @profile = Profile.new
  # end

  # POST /authors
  # def create
    
  # end
  
  # GET /authors/1/edit
  def edit
    @profile = @author.profile
  end

  # POST /authors
  def update
    raise params.inspect
 
    if @author.profile.update(profile_params)
      redirect_to author_path(@author)
    else
      render :edit
    end
  end
  
  # DELETE /authors/1
  def destroy
    author = Author.find(params[:id])
    if author
      author.destroy
      redirect_to authors_path, notice: 'Author acount successfully deleted'
    else
      redirect_to authors_path, alert: 'Author acount not founded'
    end
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

  # def author_params
  #   params.require(:authors).permit(
  #     :id, :name, :uer_name,
  #     profile_attributes: [:id, :pronouns, :title, :speciality, :bio,
  #                          :website_url, :blog, :email, :facebook,
  #                          :twitch, :twitter, :instagram, :pinterest,
  #                          :linkedin, :pateron]
  #   )
  # end


end
