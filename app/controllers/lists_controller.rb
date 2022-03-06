class ListsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new
    end
  end

  def show
    @list = List.find(params[:id])
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :bookmark, :movies)
  end

end
