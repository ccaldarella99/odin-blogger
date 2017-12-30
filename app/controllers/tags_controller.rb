class TagsController < ApplicationController
  def index
    @tag = Tag.all
  end
  
  def show
    @tag = Tag.find(params[:id])
  end
  
  def new
  end
  
  def edit
  end
  
  def create
  end
  
  def update
  end
  
  def destroy
  end
end
