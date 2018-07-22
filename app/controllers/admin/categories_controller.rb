# frozen_string_literal: true

module Admin
  class CategoriesController < ApplicationController
    def index
      @categories = Category.all
    end
  end
end
