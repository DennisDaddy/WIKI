class ArticlesController < ApplicationController
  def index
  end

  def new
    @article = Article.new

  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
      
    end
    
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def find_article
    @article = Article.find(params[:id])

    
  end

  def article_params
    params.require(:article).permit(:title, :content)
    
  end

end
