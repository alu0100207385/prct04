
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

