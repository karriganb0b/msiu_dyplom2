#encoding: UTF-8
require 'rubygems'
require 'yaml'
require './uniibrut'
require './genereator'
require './helper'
require './generator_false'
class MigrationTester
	def initialize()
	end

	def prepare()
#		system('cp -r template tmp/attempt')
		system('mkdir tmp\attempt')
		system('xcopy template tmp\attempt /S /E')
		@old = Dir.pwd
		Dir.chdir('tmp/attempt')		
		system('rake db:drop db:create')
	end

	def test_migration(mtext, mname)
		prepare()
		f = File.open("db/migrate/#{mname}", 'w+')
		f.puts(mtext)
		f.close
		pd = IO.popen('rake db:migrate 2>&1', 'r', :err=>[:child, :out])
		result = pd.read
		result.gsub!(/^   ->.*$/, '')
		result.gsub!(/^==.*$/, '')
		result.gsub!(/^--.*$/, '')
		result.gsub!(/^\s*$/, '')
		pd.close
		sf = File.open('db/schema.rb', 'r')
		schema = sf.read
		sf.close
		clean()
		return (result.size == 0), result, schema
	end


	def clean()
		Dir.chdir(@old)
#		system('rm -rf tmp/attempt')
		system('rmdir tmp\attempt /S /Q')
	end
end

if $0 == __FILE__
  t = 0
	f = 0
	circle = 0
	errors = 0
	not_errors = 0
  app = random_column_name
  txt = add_index(false, app)
  name = "#{number(10)}_create_#{app}.rb"
	mt = MigrationTester.new
	is_ok, result, schema = mt.test_migration(txt, "#{name}")
	puts is_ok
	while is_ok != true #or schema.scan("add_index") == ["add_index"]
	app = random_column_name
  text = add_index(false, app)
	mt = MigrationTester.new
	is_ok, result, schema = mt.test_migration(text, "#{number(10)}_create_#{app}.rb")
	p is_ok
	p result
end

mres = []
array = schema
array = array.split("\n").drop(12)
array = array.join("\n")
vopros = <<-END

Q
Как будет выглядеть файл shema.rb, после выполнения следующей миграции:

END

str_true = <<-END

T
\\begin{verbatim}
#{array}
\\end{verbatim}
END
txt = <<-END
\\begin{verbatim}
#{txt}
\\end{verbatim}
END

mres << str_true
3.times{
af = array.split("\n")
af[0] = "\nF"
af[1] = "\\begin{verbatim}"
af[3] = "  create_table "+"#{?"+random_column_name+?"}"+", force: true do |t|"
af[4..7].each_with_index do |x, i| 
  af[i+4] = x.gsub(/(default: [^\f\t\n\r]+)/, "default: #{eval(["random_boolean_keys", "random_date","random_float_number"].shuffle.first)}")
af[-1] = "\\end{verbatim}"
	end
mres << af
f+=3
}
	file = File.open("words/test_migration/test_true/block2.tex", 'a'){ |file| file.puts vopros}
	file = File.open("words/test_migration/test_true/block2.tex", 'a'){ |file| file.puts txt}
  file = File.open("words/test_migration/test_true/block2.tex", 'a'){ |file| file.puts mres.shuffle.join("\n")}

end
