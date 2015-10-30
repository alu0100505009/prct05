task :default => :tu 

desc "Pruebas unitarias para la clase Fracciones"
	task :tu do
	sh "ruby -I. test/tc_fraccionarios.rb"
end

desc "Pruebas unitarias simples"
	task :simple do
	sh "ruby -I. test/tc_fraccionarios.rb -n /simple/"
end

desc "Pruebas unitarias para la multiplicacion"
	task :multiplicacion do
	sh "ruby -I. test/tc_racionales.rb -n /multiplicacion/"
end

desc "Pruebas unitarias para la division"
	task :division do
	sh "ruby -I. test/tc_racionales.rb -n /division/"
end

desc "Pruebas unitarias para la suma"
	task :suma do
	sh "ruby -I. test/tc_racionales.rb -n /suma/"
end

desc "Pruebas unitarias para el negativo"
	task :negativo do
	sh "ruby -I. test/tc_racionales.rb -n /negativo/"
end

