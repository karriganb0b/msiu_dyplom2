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
		pd = IO.popen('rake db:migrate', 'r', :err=>[:child, :out])
		result = pd.read
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
def outputs
app = random_column_name
txt = add_index(false, app)
name = "#{number(10)}_create_#{app}.rb"


if $0 == __FILE__
	mt = MigrationTester.new
	is_ok, result, schema = mt.test_migration(txt, "#{name}")
	puts is_ok

end

mres = []
array = schema
array = array.split("\n").drop(12)
array[0] = "T"
array = array.join("\n")
str = <<-END
Q

Какой вид приобретёт файл schema.rb после выполнения следующей миграции:
END


mres << array
3.times{
af = array.split("\n")
af[0] = "F"
af[3] = "  create_table "+"#{?"+random_column_name+?"}"+", force: true do |t|"
af[4] = af[4].gsub(/(default: [^\f\t\n\r]+)/, "default: #{eval(["random_boolean_keys", "random_date","datatime","random_float_number"].shuffle.first)}")
af[5] = af[5].gsub(/(default: [^\f\t\n\r]+)/, "default: #{eval(["random_boolean_keys", "random_date","datatime","random_float_number"].shuffle.first)}")
af[6] = af[6].gsub(/(default: [^\f\t\n\r]+)/, "default: #{eval(["random_boolean_keys", "random_date","datatime","random_float_number"].shuffle.first)}")
af[7] = af[7].gsub(/(default: [^\f\t\n\r]+)/, "default: #{eval(["random_boolean_keys", "random_date","datatime","random_float_number"].shuffle.first)}")
mres << af
}
file = File.open("words/test_migration/test_up_down_true/1.rb", 'a'){ |file| file.puts str}
file = File.open("words/test_migration/test_up_down_true/1.rb", 'a'){ |file| file.puts txt}

file = File.open("words/test_migration/test_up_down_true/1.rb", 'a'){ |file| file.puts mres.shuffle}
end
tema = "N\nActiveRecord Migration!!!"
file = File.open("words/test_migration/test_up_down_true/1.rb", 'a'){ |file| file.puts tema}

outputs