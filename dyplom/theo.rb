require 'faker'
class MigrationMethod
  def initialize(args)
    @table_name = args[:table_name]
    @type = args[:type]
    @column_name = args[:column_name]
    @old_column_name = args[:old_column_name] || nil
    @data_type = args[:data_type] || nil
    @rest = args[:rest] || nil
  end
   
		
   def to_s
		# TODO: refactor! it's ugly!
		"#{@type}_column :"+
    [
      @table_name,
      @column_name,
      @data_type,
      @old_column_name,
      @rest
		].compact.join(', :').strip
	end
end

class AddMethod < MigrationMethod
	def initialize(args)
		args[:type] = :add
		super args
	end

	def reverse
	  RemoveMethod.new({
			table_name: @table_name, 
			column_name: @column_name 
	  })
	end
end

class RemoveMethod < MigrationMethod
	def initialize(args)
		args[:type] = :remove
		super args
	end

	def reverse	
		AddMethod.new({
			table_name: @table_name, 
			column_name: @column_name, 
			data_type: "string",
			rest: "null => false"
		})
	end
end
def name
	 	postgresql_column_name = YAML::load(open('words/columnname.yaml'))
    postgresql_column_name = postgresql_column_name.strip.split(',')
    postgresql_column_name_one = postgresql_column_name.compact.shuffle.first
    app =  "#{postgresql_column_name_one}"
    
	 end
	 def name2
	 	postgresql_column_name = YAML::load(open('words/columnname.yaml'))
    postgresql_column_name = postgresql_column_name.strip.split(',')
    postgresql_column_name_two = "#{postgresql_column_name.compact.shuffle.first}s"
		app2 = "#{postgresql_column_name_two}"
		end


		
class RenameMethod < MigrationMethod
	def initialize(args)
		args[:type] = :rename
		super args
	end

	def reverse		
		RenameMethod.new({
			table_name: @table_name, 
			column_name: @old_column_name, 
			old_column_name: @column_name 
		})
	end
end
class MigrationTimestamps
  def initialize(args)
    @table_name = args[:table_name]
    @type = args[:type]
    @column_name = args[:column_name]
   def to_s
		# TODO: refactor! it's ugly!
		"#{@type}_timestamps :"+
    [
      @table_name,
      @column_name
		].compact.join(', :').strip
	end
  end
end
class AddTimestamps < MigrationTimestamps
	def initialize(args)
		args[:type] = :add
		super args
	end

	def reverse
	  RemoveTimestamps.new({
			table_name: @table_name, 
			column_name: @column_name 
	  })
	end
end

class RemoveTimestamps < MigrationTimestamps
	def initialize(args)
		args[:type] = :remove
		super args
	end

	def reverse	
		AddTimestamps.new({
			table_name: @table_name, 
			column_name: @column_name, 
		})
	end
end
class MigrationReference
  def initialize(args)
    @table_name = args[:table_name]
    @type = args[:type]
    @column_name = args[:column_name]
  end

   def to_s
		# TODO: refactor! it's ugly!
		"#{@type}_reference :"+
    [
      @table_name,
      @column_name
		].compact.join(', :').strip
	end
end

class AddReference < MigrationReference
	def initialize(args)
		args[:type] = :add
		super args
	end

	def reverse
	  RemoveReference.new({
			table_name: @table_name, 
			column_name: @column_name 
	  })
	end
end

class RemoveReference < MigrationReference
	def initialize(args)
		args[:type] = :remove
		super args
	end

	def reverse	
		AddReference.new({
			table_name: @table_name, 
			column_name: @column_name, 
		})
	end
end


class Migration
  METHOD_TYPES = [:add, :remove, :rename]
  REFERENCE_TYPES = [:add, :remove]
  
  def initialize(numbers=rand(3..4))
    @column_names = Faker::Lorem.words(numbers)
    @ins = "#{name}"	
    @ins2 = "#{name2}"		
    @table_name = "#{@ins+"_"+@ins2}"
		@classname = "#{@ins.capitalize}" +"#{@ins2.capitalize}"
  end
  
  def methods
   @migrations ||= @column_names.map do |column_name|
   type = METHOD_TYPES.shuffle.first
		
      args = case type
      when :add
        # TODO: random data type
        {table_name: @table_name, type: type, column_name: column_name, data_type: "string", rest: "null => false"}
      when :remove
        {table_name: @table_name, type: type, column_name: column_name}
      when :rename
        {table_name: @table_name, type: type, column_name: column_name, old_column_name: Faker::Lorem.word}
      end
    
      Object.const_get("#{type.to_s.capitalize}Method").new(args)
    end
  end
    

  

 
  def up_methods(correct = true)
	column_name = @column_names.shuffle.first
	  hash = correct ? {"create_table :#{@table_name}s do |t|" => "drop_table :#{@table_name}s",
	  "rename_table :#{Faker::Lorem.words.first}s, :#{@table_name}" => "rename_table :#{@table_name}, :#{Faker::Lorem.words.first}s" } : 
	  {"create_table :#{@table_name}s do |t|" => "drop_column :#{@table_name}s", 
	  "create_table :#{@table_name}s do |t|" => "rename_column :#{@table_name}s"	}	
	  indicatore = correct ? "T" : "F"
    method_up_table = hash.keys.shuffle.first
    method_down_table = hash[method_up_table] 
	  test_array = []
	   rand(2).times do
	      column_name = @column_names.shuffle.first
        reference = correct ? AddReference.new({table_name: @table_name, column_name: column_name}) : AddReference.new({table_name: @table_name,column_name: column_name})
		 test_array << reference
		 end
			
	  timestamps = []
	   rand(2).times do
	      column_name = @column_names.shuffle.first
        timestamp = correct ? AddTimestamps.new({column_name: column_name}) : AddTimestamps.new({column_name: column_name})
		  test_array << timestamp
			end	
      
			
		
	str = <<-END
#{indicatore}
	 
class AddHashTo#{@classname} < ActiveRecord::Migration
  \tdef up
	     #{method_up_table}
       #{methods.map {|m| "\t\t#{m}"}.join("\n")}
       #{test_array.map {|m| "\t\t#{m}"}.join("\n")}
    \tend

  \tdef down\n
    #{test_array.map {|m| "\t\t#{m.reverse.to_s}"}.reverse.join("\n")}
    #{methods.map {|m| "\t\t#{m.reverse.to_s}"}.reverse.join("\n")}
    \t#{method_down_table}
    \n\tend\n
END
str = str.strip
  end
end

migration = Migration.new()
res = []
res << migration.up_methods(true)
1.times {res << migration.up_methods(false)}
file = File.open('theo.tex', 'w'){ |file| file.puts res.shuffle.join("\n").strip }


#убрать  дефаулт если есть аррэй фолс