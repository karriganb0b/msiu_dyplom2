require 'faker'

def random_str(l=8)
  str = ["a".."z", "A".."Z"].map{ |range| range.to_a }.flatten
?"+strk = (0...l).map{ str[rand(str.size)] }.join+?"
end

def add_saw
 add = (random_str(l=8)).to_s
end


def random_nubmer(n=255)
  rnd = Random.new
  float_number = rnd.rand(0 .. n)
end

def random_float_number(a = 0.0, b = 9.0)
  rnd = Random.new
  number = rnd.rand(a .. b)
end
def random_date
  while true
    begin
     year = rand(1999 .. 2014)
     month = (rand * 12)
     day = (rand * 31)
     date_r = "Date.new(#{year.to_i},#{month.to_i},#{day.to_i})"
   
   rescue
  ensure
	if date_r != nil
	date_r
	else
  date_r = "Date.new(#{year.to_i},#{month.to_i},#{day.to_i})"
	end
return date_r
end
end
end


def randomTime
  hour = (rand(24)).ceil
  min = (rand(60)).ceil
  sec = (rand(60)).ceil
  time_r = "Time.new(2010, 10, 10, #{hour.to_i},#{min.to_i},#{sec.to_i})"
end

def randomTimeAndDate
  while true
    begin
     hour = (rand(24))
     min = (rand(60))
     sec = (rand(60))
     year = rand(1999 .. 2014)
     month = (rand * 12)
     day = (rand * 31)
     time = Time.local(year,month,day,hour,min,sec)
     date_t = "DateTime.new(#{year.to_i},#{month.to_i},#{day.to_i},#{hour.to_i},#{min.to_i},#{sec.to_i})"
	 rescue
  ensure 
	if date_t != nil
	date_t
	else
	date_t = "DateTime.new(#{year.to_i},#{month.to_i},#{day.to_i},#{hour.to_i},#{min.to_i},#{sec.to_i})"
	end
return date_t
end
end
end

40.times{p randomTimeAndDate}
#p randomTime
#random_str
#random_nubmer
#random_float_number