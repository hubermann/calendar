class PageController < ApplicationController
  def calendar
  	@title = "Calendario"
  	@anio = params[:anio]
  	@mes = params[:mes]
  	@dia = params[:dia]

    if !params[:anio] or !params[:mes] or !params[:dia] or @mes.to_i > 12 or @dia.to_i >31
    fecha = Date.today
    @anio = fecha.year
    @mes = fecha.month
    @dia = fecha.day
    if @mes < 10
      @mes = "0" + @mes.to_s
    end

    redirect_to calendario_path(@anio,@mes,"01")
    end
   
  end

  def reservation
  	@title = "reservas"
  end

  def about
  	@title = "Acerca nuestro"
  end

end
