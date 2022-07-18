class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index show ]
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def index
    @articles = policy_scope(Article)
  end

  def show
    @article = authorize Article.find(params[:id])
  end

  def destroy
  end
end
