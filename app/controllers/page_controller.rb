class PageController < ApplicationController
  def calendar
  	@title = "Calendario"
  	@anio = params[:anio]
  	@mes = params[:mes]
  	@dia = params[:dia]

    
   
  end

  def reservation
  	@title = "reservas"
  end

  def about
  	@title = "Acerca nuestro"
  end

end
