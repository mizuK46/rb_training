# frozen_string_literal: true

print 'Text?:'
text = gets.chomp # .chompでエンターの改行を無視
begin
  print 'Pattern?:'
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid pattern:#{e.message}"
  retry
end

matches = text.scan(regexp)
if !matches.empty?
  puts "Matched: #{matches.join(',')}"
else
  puts 'Nothing matched'
end
