class TdlsController < ApplicationController

  def index 
    @tdls = Tdl.all
  end



end
