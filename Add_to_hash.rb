@hh = {}                                                  #записная книжка с функцией добавления и вывода на экран
def add_person options                             #функция добавления обьектов в хеш (передача хеша в функцию)
   puts 'Already exists!' if @hh[options[:name]]   #если введеное имя уже есть в хеше @хэш[параметр[ключ]]
   @hh[options[:name]] = options[:age]             #3.9 добавление в хеш 
end
def show_hash                                    #функция выведения хеша
   @hh.keys.each do |key|                        #к каждому элементу(ключу) применяется по порядку
      age = @hh[key]                             #задаем переменную age по ключу из хеша 
      puts "Name: #{key}, age: #{age}"           #выводим имя: ключ из хеша(имя) и пременную age 
   end
end
loop do                                      #бесконечный цикл
   print 'Enter name: '                #1    выводим строку         
   x = gets.strip.capitalize        #2    вводим переменную name  
   if x == ''                       #3.1  условие
      show_hash                        #3.2  ...   для запуска функции show_hash
      exit                             #3.3  ...
   end
   print 'Enter age:'                  #3.4  выводим строку
   y = gets.to_i                     #3.5  вводим переменную age
   add_person :name => x,:age => y           #3.7  запуск функции по хешу  создается хеш и добавляется name and age в хеш
end


