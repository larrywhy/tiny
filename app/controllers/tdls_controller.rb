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

private

  def tdl_params
    params.require(:tdl).permit(:todo,:isdone)
  end

end
