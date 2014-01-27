class WinesController < ApplicationController

  def index
    @wines = Wine.last(5)
  end

  def new
    @wine = Wine.new
    @winery_list = Winery.all(order: 'name')
    @grape_list = Grape.all
    @category_list = ['Red', 'White', 'Rose', 'Sparkling', 'Fortified']
  end

  def create
    wine = Wine.new(wine_params)
    if wine.save
      redirect_to wines_path
    else
      render :new
    end
  end

  def show
    @wine = Wine.find_by(id: params[:id])
  end

  def edit
    @wine = Wine.find_by(id: params[:id])
    @winery_list = Winery.all(order: 'name')
    @grape_list = Grape.all
    @category_list = ['Red', 'White', 'Rose', 'Sparkling', 'Fortified']
  end

  def update
    wine = Wine.find_by(id: params[:id])
    wine.update_attributes(wine_params)
    if wine.save
      redirect_to wines_path
    else
      render :edit
    end
  end

  def destroy
    wine = Wine.find_by(id: params[:id])
    wine.destroy
    redirect_to wines_path # Add notice for successful deletion
  end

  private

  def wine_params
    params.require(:wine).permit( :vintage, 
                                  :winery_id,
                                  :grape_id,
                                  :alcohol_percentage,
                                  :serving_temperature,
                                  :sweetness,
                                  :acidity,
                                  :tanin,
                                  :fruit,
                                  :body,
                                  :category_type
                                )
  end
end
