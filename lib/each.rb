
numbers = [1,2,3,4,5,6]
sum = 0

numbers.each do |n|
  sum += n
end

numbers.each do
  sum += 1
end

numbers.each { |n| sum += n }
puts sum#=>10

#3の倍数を除外
non_multiples_of_three = numbers.reject {|n| n % 3 == 0}

non_multiples_of_three #=>[1245]

['ruby','java','perl'].map{|s| s.upcase} #=>['RUBY','JAVA','PERL']
['ruby','java','perl'].map(&:upcase) #=>['RUBY','JAVA','PERL']

[1,2,3,4,5,6].select{|n|n.odd?} #=>[1,3,5]
[1,2,3,4,5,6].select(&:odd?) #=>[1,3,5]
