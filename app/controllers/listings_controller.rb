class ListingsController < ApplicationController
  before_action :must_be_lender, only: [:new, :create, :update, :destroy]
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # before_action :authorized_user, only: [:edit, :update, :destroy]s

  # Default page that displays the food listings in order of creation
  def index
    @foods = Listing.all
    # Orders posts (Default is newst -> oldest) and sets paginate paramaters
    @foods = Listing.order("created_at DESC")

    if params[:search]
      @foods = Listing.where('tool LIKE ?', "%#{params[:search]}%")
    end
  end

  def new
    @food = current_user.listings.build
  end

  # When user wants to create a new food listing
  def create
    @food = current_user.listings.build(query_p)
    if @food.save
      redirect_to @food
    else
      render 'new'
    end
  end

  def show
    @food = Listing.find(params[:id])
  end

  def edit
    @food = Listing.find(params[:id])
  end

  def update
    @food = Listing.find(params[:id])
    if @food.update(query_p)
      redirect_to @food
    else
      render 'edit'
    end
  end

  def destroy
    @food.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def must_be_lender
    unless current_user && current_user.is_lender?
      redirect_to root_path, notice: "Some message"
    end
  end

  def find_post
    @food = Listing.find(params[:id])
  end

  def query_p
    params.require(:listing).permit(:tool, :price, :location, :image)
  end

end
