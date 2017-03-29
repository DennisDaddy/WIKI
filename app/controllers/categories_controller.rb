class CategoriesController < ApplicationController
 

  def index

    @categories = Category.all
  end

  

  def new
    @category = Category.new
    
  end

  def create
     @category = Category.new(category_params)
     if @category.save
     
      flash[:success] = "Your category has been saved"
       redirect_to categories_path
    else
      render 'new'
     end
    
  end

  def show
    @category = Category.find(params[:id])
    @title = @category.name
    @articles = @category.articles
  end

  def edit
     @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update_attributes(category_params)

       flash[:success] = "Category successfuly updated!!"


    
    redirect_to categories_path

    else

    render 'edit'

    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:success] = "Category successfuly deleted!!"
    redirect_to request.referrer || root_url
  end

  private

  

  def category_params
    params.require(:category).permit(:name, :category_id)
  end
end
