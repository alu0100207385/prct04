#Aaron Socas Gaspar
#Mª Belen Armas Torres


#Funcion menu
def menu
  system ("clear")
  z=0
  while (z<1 or z>5)
    op=["\t\tMENU","\t1. Introducir matrices","\t2. Sumar matrizces","\t3. Multiplicar matrices","\t4. Mostrar matrices","\t5. Salir"]
    op.each{|op| puts op}
    z=gets.chomp
    z=z.to_i
    if (z<1 or z>5)
      puts ("Escoja una opcion entre [1..5]")
    end
  end
  return z
end

#Esta funcion la utilizamos para pausar del programa
def pausa
#     while line=gets
     while gets
      break
    end
end

#Carga la matriz
def cargar_Matriz(matrix)
  for i in(0..matrix.length-1)
	for x in(0..matrix[0].length-1)
		puts "Valor de la fila #{i}, columna #{x}"			
		STDOUT.flush
		matrix[i][x]=gets.chomp
		x=x+1
	end
	puts "\n"
	i=i+1
  end
end


