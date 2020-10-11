class Authors::ProfileController < ApplicationController
  before_action :authenticate_author!
  before_action :set_author

  # GET /authors
  # def index
  # end

  # Get /authors/1
  # def show
  # end

  # Get /authors/new
  # def new
  #   @profile = Profile.new
  # end

  # POST /authors
  # def create
    
  # end
  
  # GET /authors/1/profile.2
  def edit
    @profile = @author.profile
  end

  # POST /authors
  def update
    # raise params.inspect
    profile = @author.profile
 
    if profile.update(profile_params)
      redirect_to author_path(@author)
    else
      render :edit
    end
  end
  
  # DELETE /authors/1
  # def destroy
  #   author = Author.find(params[:id])
  #   if author
  #     author.destroy
  #     redirect_to authors_path, notice: 'Author acount successfully deleted'
  #   else
  #     redirect_to authors_path, alert: 'Author acount not founded'
  #   end
  # end

  private

  def set_author
    @author = Author.find(params[:author_id])
  end

  def profile_params
      params.require(:profile).permit(
                              :id, :pronouns, :title, :speciality, :bio,
                              :website_url, :blog, :email, :facebook,
                              :twitch, :twitter, :instagram, :pinterest,
                              :linkedin, :pateron, :image
      )
  end
end