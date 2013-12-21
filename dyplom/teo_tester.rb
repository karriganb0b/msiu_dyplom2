#encoding: UTF-8

require './theo'
require 'active_support/all'
require 'faker'
class MigrationTester
	def initialize()
	end
	
	def number(digits)
  rand(digits ** 10 - 1).to_s.center(digits, rand(9).to_s)
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
  text = gene
  app = text.split(/[ : \.]/)
  app = app[1]
  app = app.gsub(/(AddHashTo+)/, '\\2')
	app = app.underscore
	mt = MigrationTester.new
	is_ok, result, schema = mt.test_migration(text, "#{number(10)}_add_hash_to_#{app}.rb")
	p is_ok
	p result
	p app
	while is_ok != true
  text = gene
  app = text.split(/[ : \.]/)
  app = app[1]
  app = app.gsub(/(AddHashTo+)/, '\\2')
	app = app.underscore
	mt = MigrationTester.new
	is_ok, result, schema = mt.test_migration(text, "#{number(10)}_add_hash_to_#{app}.rb")
	p is_ok
	p app
	p result
  end
vopros = <<-END
Q
Выберите правильную миграцию

END

str_true = <<-END
T
\\begin{verbatim}
#{text}
\\end{verbatim}
END
	
str_false = <<-END
F
\\begin{verbatim}
#{genef}
\\end{verbatim}
END
	res = []
	res << str_true
	3.times{ res << str_false }
	file = File.open("words/test_migration/test_true/theo_base.tex", 'a'){ |file| file.puts vopros}
  file = File.open("words/test_migration/test_true/theo_base.tex", 'a'){ |file| file.puts res.shuffle.join("\n")}
end