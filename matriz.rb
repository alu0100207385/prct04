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

#Muestra una matriz
def mostrar_Matriz(matrix)
  for i in(0..matrix.length-1)
    for x in(0..matrix[0].length-1)
      print "#{matrix[i][x]}|"
	x = x+1
    end
    puts "\n"
    i=i+1
  end
end

#Suma dos matrices
def suma_Matriz(matrixA, matrixB, size)
  suma=Array.new(size){Array.new(size)}
  for i in (0..matrixA.length-1)	
    for j in (0..matrixB.length-1)
      suma[i][j]=(suma[i][j].to_i + (matrixA[i][j].to_i + matrixB[i][j].to_i))	
    end
  end
  return suma
end


#Multiplica dos matrices
def multiplicar_Matriz(matrixA, matrixB, size)
  multiplica=Array.new(size){Array.new(size)}
  for i in (0..matrixA.length-1)	
    for j in (0..matrixB.length-1)
      for k in (0..multiplica.length-1)
	multiplica[i][j]=(multiplica[i][j].to_i + (matrixA[i][k].to_i * matrixB[k][j].to_i)) 
      end
    end	
  end
  return multiplica
end

#Ejecucion del programa principal
def principal
  op=0
  while (op!=5)
    op= menu
    case op
      when 1
	print "Introduce la dimension de las matrices: "
	STDOUT.flush
	t=gets.chomp
	a = Array.new(t.to_i){Array.new(t.to_i)}
	b = Array.new(t.to_i){Array.new(t.to_i)}
	
	puts "Crea la primera matriz"
	cargar_Matriz(a)

	puts "Crea la segunda matriz"
	cargar_Matriz(b)
	
	puts "Matrices creadas..."
	puts "Matriz A..."
	mostrar_Matriz(a)
	puts "Matriz B..."
	mostrar_Matriz(b)
      when 2
	puts "Suma de matrices..."
	puts "Matriz A..."
	mostrar_Matriz(a)
	puts "\nMatriz B..."
	mostrar_Matriz(b)
	puts "\nResultado..."
	s = suma_Matriz(a, b, t.to_i)
	mostrar_Matriz(s)
      when 3
	puts "Multiplicacion de matrices..."
	puts "Matriz A..."
	mostrar_Matriz(a)
	puts "\nMatriz B..."
	mostrar_Matriz(b)
	puts "\nResultado..."
	c = multiplicar_Matriz(a, b, t.to_i)
	mostrar_Matriz(c)
      when 4
	puts "Matriz A..."
	mostrar_Matriz(a)
	puts "\nMatriz B..."
	mostrar_Matriz(b)
    end
  pausa
  end
end

principal
