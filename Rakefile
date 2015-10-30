task :default => :tu 

desc "Pruebas unitarias para la clase Fracciones"
	task :tu do
	sh "ruby -I. test/tc_fraccionarios.rb"
end

desc "Pruebas unitarias simples"
	task :simple do
	sh "ruby -I. test/tc_fraccionarios.rb -n /simple/"
end

desc "Pruebas unitarias para la suma"
	task :suma do
	sh "ruby -I. test/tc_racionales.rb -n /suma/"
end
