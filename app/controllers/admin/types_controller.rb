module Admin
  class TypesController < ApplicationController
    def index
      @types = Type.all
    end

    def new
      @type = Type.new
    end

    def create
      @category = Category.find(params[:category_id])
      # @type = @category.types.build(type_params)
      # @type.save
      Type.create(type_params.merge({category_id: @category.id}))
      redirect_to admin_category_path(@category), notice: 'Pomyślnie dodano typ'
    end

    def destroy
      @type = Type.find(params[:id])
      @type.destroy
      flash[:notice] = 'Pomyślnie usunięto typ'
      redirect_to admin_category_types_path
    end

    private

    def type_params
      params.require(:type).permit(:name, :description, :occasion)
    end
  end
end
