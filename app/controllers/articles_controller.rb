class ArticlesController < ApplicationController

  def new
    @article = Article.new	
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
   @article = Article.new(params.require(:article).permit(:title, :text))
    @article.save
    redirect_to @article
  end

# private
#   def post_params
#     params.require(:article).permit(:title, :text)
#   end

end
