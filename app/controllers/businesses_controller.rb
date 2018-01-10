class BusinessesController < ApplicationController

  def index
  	@businesses = Business.all
  	@lists = List.all
  end 

  def show
  	@business = Business.find(params[:id])
  end

  def new 
  	@business = Business.new
  end

  def edit
     @business = Business.find params[:id]
  end

  def create
  	@business = Business.new(business_params)
    @business.user_id = current_user.id
  	if @business.save 
  	  redirect_to action: "index"
    else
      render 'new'
    end
  end

  def update
  @business = Business.find(params[:id])
 
  if @business.update(business_params)
    redirect_to @business
  else
    render 'edit'
  end
end

def destroy
  @business = Business.find(params[:id])
  @business.destroy
 
  redirect_to businesses_path
end

private
  def business_params
    params.require(:business).permit(:name, :status, :description, :priority, :user_id, :list_id)
  end

end
