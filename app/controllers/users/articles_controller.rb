class Users::ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      redirect_to users_article_path(@article)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to users_article_path(@article)
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to users_articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :image)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
