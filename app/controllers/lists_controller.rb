class ListsController < ApplicationController
  before_action :set_list, only: [:show]

  # A user can create a new list
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    # No need for app/views/list/create.html.erb
    redirect_to list_path(@list)
  end

  # A user can see the details of a given list and its name
  def show
    # @list = List.find(params[:id])
  end

  # A user can see all the lists
  def index
    @lists = List.all
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
