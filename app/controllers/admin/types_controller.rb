module Admin
  class TypesController < ApplicationController
    def index
      @type = Type.all
    end

    def new
      @type = Type.new
    end

    def create
      @type = Type.new(type_params)
      if @type.save
        redirect_to admin_category_types_path, notice: 'Pomyślnie dodano typ'
      else
        render 'new'
      end
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
