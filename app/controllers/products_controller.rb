class ProductsController < ApplicationController

  def index

    @products = Product.all
    @products = Product.paginate(page: params[:page], per_page: 6)


    if params[:sort] == 'lowPrice'
      @products = Product.order(price: :ASC).paginate(page: params[:page], per_page: 6)
    elsif params[:sort] == 'highPrice'
      @products = Product.order(price: :DESC).paginate(page: params[:page], per_page: 6)
    elsif params[:sort] == 'alphabetAsc'
      @products = Product.order(name: :ASC).paginate(page: params[:page], per_page: 6)
    elsif params[:sort] == 'alphabetDesc'
      @products = Product.order(name: :DESC).paginate(page: params[:page], per_page: 6)
    elsif params[:min] || params[:max]
      @products = Product.where(price: [params[:min]].first..[params[:max]].last).paginate(page: params[:page], per_page: 6)
    elsif params[:query]
      @products = Product.where('name ILIKE ?', "%#{params[:query]}%").paginate(page: params[:page], per_page: 6)
      render "products/index"
    end

  end


  def show
    @product = Product.find(params[:id])
  end

  def search
    @products = Product.where('name ILIKE ?', "%#{params[:query]}%").paginate(page: params[:page], per_page: 3)
    render "products/index"
  end

  private

end

