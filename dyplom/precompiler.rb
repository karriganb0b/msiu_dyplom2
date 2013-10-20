require './renameremove_column'
require './up_gen_func'

tema = "N\nActiveRecord Migration!!!\n"
teme = File.open('migration3.tex', 'a'){ |file| file.puts  tema }
def sbor_testa

res = []
array_answers = ["#{downrename}","#{renameupdown}","#{rmrv}","#{upddown}","#{timest}"].shuffle.first
4.times{
res << array_answers}
    File.open('migration3.tex', 'a') do |file| 
	file.puts res.shuffle.join("\n")
  end
end
sbor_testa