# test
module Effects
  def self.reverse
    ->(words) do
      words.split(' ').map(&:reverse).join(' ')
    end
  end

  def self.echo(n)
    ->(words) do
      words.chars.map { |word| word == ' ' ? word : word * n }.join
    end
  end

  def self.loud(n)
    ->(words) do
      words.split(' ').map { |word| word.upcase + '!' * n }.join(' ')
    end
  end
end