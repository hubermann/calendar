module PageHelper

#Miedo es el nombre que le damos a nuestra ignorancia


def posicionInicio(aniorecibido,mesrecibido,diarecibido)
	anio = aniorecibido.to_s   # => Year of the date 
	mes = mesrecibido.to_i  # => Month of the date (1 to 12)
	dia = diarecibido.to_s    # => Day of the date (1 to 31 )

	fecha = Time.new(anio,mes,dia)

	dianumero = fecha.wday

	return dianumero

end

def mostrarFecha(aniorecibido,mesrecibido,diarecibido)


anio = aniorecibido.to_s   # => Year of the date 
mes = mesrecibido.to_i  # => Month of the date (1 to 12)
dia = diarecibido.to_s    # => Day of the date (1 to 31 )

fecha = Time.new(anio,mes,dia)

dianumero = fecha.wday

if mes < 10 then mes = "0" + mes.to_s end
case mes.to_s
	when "01"
	mes = "Enero"
	when "02"
	mes = "Febrero"
	when "03"
	mes = "Marzo"
	when "04"
	mes = "Abril"
	when "05"
	mes = "Mayo"
	when "06"
	mes = "Junio"
	when "07"
	mes = "Julio"
	when "08"
	mes = "Agosto"
	when "09"
	mes = "Septiembre"
	when "10"
	mes = "Octubre"
	when "11"
	mes = "Noviembre"
	when "12"
	mes = "Diciembre"
end

case dianumero
	when 0
	dianombre = "Domingo"
	when 1
	dianombre = "Lunes"
	when 2
	dianombre = "Martes"
	when 3
	dianombre = "Miercoles"
	when 4
	dianombre = "Jueves"
	when 5
	dianombre = "Viernes"
	when 6
	dianombre = "Sabado"
end



return dia + " de " +mes +" del  "+ anio + " :::: Dia = " + dianombre 

end


def cantidadDiasMes(mesrecibido,aniorecibido)
  cantidad = Time::days_in_month(mesrecibido.to_i, aniorecibido.to_i)
  return  cantidad
end

#da el nombre del mes
def nombreMes(mesrecibido, aniorecibido)
	mes = mesrecibido.to_i
if mes < 10 then mes = "0" + mes.to_s end
	case mes.to_s
		when "01"
		mes = "Enero"
		when "02"
		mes = "Febrero"
		when "03"
		mes = "Marzo"
		when "04"
		mes = "Abril"
		when "05"
		mes = "Mayo"
		when "06"
		mes = "Junio"
		when "07"
		mes = "Julio"
		when "08"
		mes = "Agosto"
		when "09"
		mes = "Septiembre"
		when "10"
		mes = "Octubre"
		when "11"
		mes = "Noviembre"
		when "12"
		mes = "Diciembre"
	end
return mes +" "+ aniorecibido
end

#links de navegacion
def linkAnterior(aniorecibido, mesrecibido)
	mesrecibido = mesrecibido.to_i

	aniorecibido = aniorecibido.to_i

	anioanterior = aniorecibido.to_i

	mesanterior = mesrecibido - 1

	if mesanterior == 0
		anioanterior = aniorecibido - 1
		mesanterior = 12
	end

	if mesanterior < 10
		mesanterior = "0"+ mesanterior.to_s
	end

return  link_to "<<", calendario_path(anioanterior.to_s,mesanterior.to_s,"01")

end

def linkSiguiente(aniorecibido, mesrecibido)
	mesrecibido = mesrecibido.to_i

	aniorecibido = aniorecibido.to_i

	aniosiguiente = aniorecibido.to_i

	messiguiente = mesrecibido + 1

	if messiguiente == 13
		aniosiguiente = aniorecibido + 1
		messiguiente = 1
	end
	if messiguiente < 10
		messiguiente = "0"+ messiguiente.to_s
	end

return  link_to ">>", calendario_path(aniosiguiente.to_s,messiguiente.to_s,"01")

end

end