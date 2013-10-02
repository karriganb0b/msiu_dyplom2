require 'faker'

def random_str(l=8)
str = ["a".."z", "A".."Z"].map{ |range| range.to_a }.flatten
strk = (0...l).map{ str[rand(str.size)] }.join
end
#Интервал: множество значений, заданных с начальным и конечным элементами.
def random_nubmer(n=255)
rnd = Random.new
float_number = rnd.rand(0 .. n)
end
#Специальный класс Random ( ускоряем получение рандомного вещественного числа)
def random_float_number(a = 0.0, b = 9.0)
rnd = Random.new
number = rnd.rand(a .. b)
end
def random_date(params={})
        years_back = params[:year_range] || 5
        latest_year  = params [:year_latest] || 0
        year = (rand * (years_back)) + (Time.now.year - latest_year - years_back)
        month = (rand * 12)
        day = (rand * 31)
        date = Time.local(year, month, day)
       date_r = date.strftime("%m/%d/%Y")
      end


def randomTime
hour = (rand(24))
min = (rand(60))
sec = (rand(60))
time = Time.local(2000,1,1,hour,min,sec)
time_r = time.strftime("%I:%M:%S%p") 

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
data_t = time
rescue
ensure
	return time
end
end

end

#p randomTime
#random_str
#random_nubmer
#random_float_number