class ListsController < ApplicationController

  def show
  	@list = List.find(params[:id])
  end

  def new
  	@list = List.new
  end

  def create
	@list = List.new(list_params)
	@list.user_id = current_user.id
	if @list.save 
  	  redirect_to businesses_path
    else
      render 'new'
    end
  end

  def destroy
  	@list = List.find(params[:id])
  	@list.destroy
 
    redirect_to businesses_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :user_id)
  end

end
