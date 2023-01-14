hh = {'dog' => ['собака','пес'], 'cat' => ['кошка','кот'],'girl' => ['девушка']}  #считает колво значений в хеше
x = 0
hh.each_value do |value|

   x = x + value.size

end
puts x