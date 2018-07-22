# frozen_string_literal: true

module Admin
  class CategoriesController < ApplicationController
    def index
      @categories = Category.all
    end

    def show
      @category = Category.find(params[:id])
      @types = Category.find(@category.id).types
    end

    def new
      @category = Category.new
    end

    def create
      @category = Category.new(category_params)
      if @category.save
        redirect_to admin_categories_path, notice: 'Pomyślnie dodano kategorię'
      else
        render 'new'
      end
    end

    def update
      @category = Category.find(params[:id])
     
      if @category.update(category_params)
        redirect_to admin_category_path(@category)
      else
        redirect_to admin_categories_path
      end
    end

    def destroy
      @category = Category.find(params[:id])
      @category.destroy
      flash[:notice] = 'Pomyślnie usunięto kategorię'
      redirect_to admin_categories_path
    end

    private

    def category_params
      params.require(:category).permit(:name)
    end
  end
end
