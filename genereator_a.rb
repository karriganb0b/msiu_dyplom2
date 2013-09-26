require 'faker'

def random_str(l=8)
str = ["a".."z", "A".."Z"].map{ |range| range.to_a }.flatten
puts (0...l).map{ str[rand(str.size)] }.join
end
#Интервал: множество значений, заданных с начальным и конечным элементами.
def random_nubmer(n=255)
rnd = Random.new
p rnd.rand(0 .. n)
end
#Специальный класс Random ( ускоряем получение рандомного вещественного числа)
def random_float_number(a = 0.0, b = 9.0)
rnd = Random.new
p rnd.rand(a .. b)
end
def randomDate(params={})
        years_back = params[:year_range] || 5
        latest_year  = params [:year_latest] || 0
        year = (rand * (years_back)) + (Time.now.year - latest_year - years_back)
        month = (rand * 12)
        day = (rand * 31)
        date = Time.local(year, month, day)
        date.strftime("%m/%d/%Y")
      end
#p randomDate(:year_range => 10, :year_latest => 5)

def randomTime
hour = (rand(24))
min = (rand(60))
sec = (rand(60))
time = Time.local(2000,1,1,hour,min,sec)
time.strftime("%I:%M:%S%p") 

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
rescue
ensure
	return time
end
end
end
p randomTimeAndDate
p randomTime
#random_str
#random_nubmer
#random_float_number