class CategoriesController < ApplicationController

  def show
    # Find the category belonging to the given id
    @category = Category.find(params[:id])
    # Grab all sub-categories
    @categories = @category.subcategories
    # We want to reuse the index renderer:
    # render :action => :index
    @products = Product.where(category_id: params[:id]).paginate(page: params[:page], per_page: 6)
    if params[:sort] == 'lowPrice'
      @products = Product.where(category_id: params[:id]).order(price: :ASC).paginate(page: params[:page], per_page: 6)
    elsif params[:sort] == 'highPrice'
      @products = Product.where(category_id: params[:id]).order(price: :DESC).paginate(page: params[:page], per_page: 6)
    elsif params[:sort] == 'alphabetAsc'
      @products = Product.where(category_id: params[:id]).order(name: :ASC).paginate(page: params[:page], per_page: 6)
    elsif params[:sort] == 'alphabetDesc'
      @products = Product.where(category_id: params[:id]).order(name: :DESC).paginate(page: params[:page], per_page: 6)
    elsif params[:min] || params[:max]
      @products = Product.where(category_id: params[:id], price: [params[:min]].first..[params[:max]].last).paginate(page: params[:page], per_page: 6)
    end
  end
end
