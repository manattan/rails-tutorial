class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
        puts @article
    end

    def new
    end

    def create
        puts params[:article]
        @article = Article.new(article_params)
        puts @article
        @article.save
        redirect_to @article
    end

    private
        def article_params
            params.require(:article).permit(:title, :text)
        end
end
