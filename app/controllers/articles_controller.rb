class ArticlesController < ApplicationController
  def new
  end

  def create
    @article = Article.new(params[:article])

    render plain: @article.inspect

    @article.save
    redirect_to @article
  end
end
