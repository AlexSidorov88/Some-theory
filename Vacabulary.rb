hh = {'dog' => ['собака','пес'], 'cat' => ['кошка','кот'],'girl' => ['девушка']}
loop do

   print 'Enter word: '
   word = gets.strip

   translatoin = hh[word]
   puts "Кол-во перевода слова: #{translatoin.size} "
   puts "Перевод слова: #{translatoin}"

end