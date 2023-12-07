class Api::V1::NewsController < ApplicationController
    before_action :set_news, only: [:show, :update, :destroy]

    def index
        @news = News.all
        render json: @news
    end

    def show
        render json: @news
    end

    def create
        @news = News.new(news_params)
        if @news.save
            render json: @news
        else
            render json: @news.errors, status: :unprocessable_entity
        end
    end

    def update
        if @news.update(news_params)
            render json: @news
        else
            render json: @news.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @news.destroy
    end

    def set_news
        @news = News.find(params[:id])
    end

    def news_params
        params.require(:news).permit(:title, :content, :image)
    end
end
