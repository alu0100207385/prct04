
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
