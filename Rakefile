task :default => :tu #por defecto si no ponemos nada en la consola se me ejecuta tu:

desc "Pruebas unitarias para la clase Fracciones"
	task :tu do
	sh "ruby -I. test/tc_fraccionarios.rb"
end

desc "Pruebas unitarias solo para las simples"
	task :simple do
	sh "ruby -I. test/tc_fraccionarios.rb -n /simple/"
end
