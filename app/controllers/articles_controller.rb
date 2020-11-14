class ArticlesController < ApplicationController

    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
        # Article.new is a model
        # render forms
        @article = Article.new
    end

    def create
        # tatanggapin kung ano yung sinubmit ng user natin
        @article = Article.new(article_params)
        # @article.name = params[:article][:name]
        # @article.body = params[:article][:body]
        if @article.save
            redirect_to articles_path
        else
            render :new
        end
    end

    def edit
        # @article = Article.find(id)
        # @article.name = params[:article][:name]
        # @article.body = params[:article][:body]
        # @article.save
        @article = Article.find(params[:id])
        
    end

    def update
        @article = Article.find(params[:id])
        
         if @article.update(article_params)
             redirect_to articles_path
         else
             render :edit
         end
    end

    def delete
        # @article = Article. #parameter you want to delete
        # @article.destroy
        @article = Article.find(params[:id]).destroy
        redirect_to articles_path
    end

    private
    def article_params
        params.require(:article).permit(:name, :body)
    end

end
