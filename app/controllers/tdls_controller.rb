class TdlsController < ApplicationController

  def index 
    @tdls = Tdl.all
  end

  def new
    @tdl = Tdl.new
  end

  def create
    @tdl = Tdl.new(tdl_params)
    if @tdl.save
       redirect_to(tdls_path)
    else
       render :new
    end
  end
  
 # def show
 #   @tdl = Tdl.find(params[:id])
 # end
 
  # edit & update action
  def edit
    @tdl = Tdl.find(params[:id])
  end

  def update
    @tdl = Tdl.find(params[:id])
    if @tdl.update(tdl_params)
      redirect_to tdls_path
    else
      render :edit
    end
  end

  def isdone
    @tdl = Tdl.find(params[:id])
    if @tdl.isdone
        @tdl.isdone = false
    else
        @tdl.isdone = true
    end
    @tdl.save
    redirect_to tdls_path 
  end

  def destroy
    @tdl = Tdl.find(params[:id])
    @tdl.destroy
    redirect_to tdls_path 
  end

private

  def tdl_params
    params.require(:tdl).permit(:todo,:isdone)
  end

end
