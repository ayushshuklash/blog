class CategoriesController < ApplicationController
  def new
    @category     = Category.new
  end
  def create
    @category = Category.new(params[:category])
      if @category.save
        redirect_to new_category_path, :notice => "AAPKA POST ADD HO GAYA HAIN"
      else
        render"new"
      end
    end
end
