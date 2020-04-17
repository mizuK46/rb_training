require 'minitest/autorun'
require './lib/bank'
require './lib/team'
require 'pry'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    binding.pry
    puts Team::COUNTRIES.nil?
    assert_equal %w[Japan US India], Team::COUNTRIES
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all?(&:frozen?)
  end

  def test_deep_freeze_to_hash
    puts Team::COUNTRIES.nil?
    assert_equal({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' }, Bank::CURRENCIES)
    assert Bank::CURRENCIES.frozen?
    assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
    #もっと短く
  end
end
