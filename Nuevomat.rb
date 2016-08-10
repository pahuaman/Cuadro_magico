#cuadro magico
class Cuadromagico
	def inicialite()
		
	end
    def base()
    	cuadro4 = [1,2,3]
    	cuadro5 = [4,5,6]
    	cuadro6 = [7,8,9]

    	puts "Cuadro Base"
    	print cuadro4
    	puts"\n"
    	print cuadro5
    	puts"\n"
    	print cuadro6
    	puts"\n\n"
    end
	def muestra()
		#capturando arreglo # 1
		base() #aqui made llamar un metodo dentro de otro metodo
		puts "dame los numeros de la primer fila: "
		puts "numero 1: "
  		STDOUT.flush
        disco=gets.chomp
        n0=disco.to_i
        puts "dame los numeros de la primer fila: "
		puts "numero 2: "
  		STDOUT.flush
        disco=gets.chomp
        n1=disco.to_i
        puts "dame los numeros de la primer fila: "
		puts "numero 3: "
  		STDOUT.flush
        disco=gets.chomp
        n2=disco.to_i
        cuadro1 =[n0,n1,n2]
        
        #capturando arreglo # 2
        puts "dame los numeros de la segunda fila: "
		puts "numero 4: "
  		STDOUT.flush
        disco=gets.chomp
        n4=disco.to_i
        puts "dame los numeros de la segunda fila: "
		puts "numero 5: "
  		STDOUT.flush
        disco=gets.chomp
        n5=disco.to_i
        puts "dame los numeros de la segunda fila: "
		puts "numero 6: "
  		STDOUT.flush
        disco=gets.chomp
        n6=disco.to_i
        cuadro2 =[n4,n5,n6]

        #capturando arreglo # 3
        puts "dame los numeros de la tercera fila: "
		puts "numero 7: "
  		STDOUT.flush
        disco=gets.chomp
        n7=disco.to_i
        puts "dame los numeros de la tercera fila: "
		puts "numero 8: "
  		STDOUT.flush
        disco=gets.chomp
        n8=disco.to_i
        puts "dame los numeros de la tercera fila: "
		puts "numero 9: "
  		STDOUT.flush
        disco=gets.chomp
        n9=disco.to_i
        cuadro3 =[n7,n8,n9]
		
		#impresion de arreglos
		print "\ntus numeros fueron: " 
		puts"\n"
		print cuadro1 
		puts"\n"
		print cuadro2
		puts"\n"
		print cuadro3
		puts"\n"
        
        #suma de filas
		x1 = cuadro1[0] + cuadro1[1] + cuadro1[2]
		x2 = cuadro2[0] + cuadro2[1] + cuadro2[2]
		x3 = cuadro3[0] + cuadro3[1] + cuadro3[2]
		

		#suma de columnas
		x4 = cuadro1[0] + cuadro2[0] + cuadro3[0]
		x5 = cuadro1[1] + cuadro2[1] + cuadro3[1]
		x6 = cuadro1[2] + cuadro2[2] + cuadro3[2]

		#suma de diagonales 
		x7 = cuadro1[0] + cuadro2[1] + cuadro3[2]
		x8 = cuadro1[2] + cuadro2[1] + cuadro3[0]

		#impresion de sumas de diagonales, filas y columnas
		puts "suma de filas: "
		puts x1
		puts x2
		puts x3
		puts "suma de columnas: "
		puts x4
		puts x5
		puts x6
		puts "suma de las diagonales: "
		puts x7
		puts x8
		
		#evaluando los datos introducidos
		if x1 == 15 and x2 == 15 and x3 == 15 and x4 == 15 and x5 == 15 and x6 == 15 and x7 == 15 and x8 == 15 
			print "FELICIDADES GANASTE\n "
			print "ERES UN MARICA. "
		else
			print "LO SIENTO PERDISTE "
		end
	end
    
    def inicio()
		puts "cuadro magico\npara ganar el juego debes lograr\nque la siguiente matriz\nen sus diagonales,filas y columnas sume 15\n"
		puts "solo puedes usar numeros del 1 al 9 sin repetir numeros\nSUERTE\n\n"
		puts "utiliza el cuadro base para guiarte\n\n"
    end
end

objeto = Cuadromagico.new()
objeto.inicio
objeto.muestra
gets()