class ArticlesController < ApplicationController

    def index
        @articles = Article.all
    end

    def show
    end

    def new
        # Article.new is a model
        # render forms
        @article = Article.new
    end

    def create
        # tatanggapin kung ano yung sinubmit ng user natin
        @article = Article.new(article_params)
        if article.save
            redirect_to articles_path
        else
            render :new
        end
    end

    def edit
    end

    def update
    end

    def delete
    end

    private
    def article_params
        params.require(:article).permit(:name, :body)
    end

end
