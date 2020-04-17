require 'minitest/autrun'
require './lib/effects'
require './lib/word_synth'

class WordSynthTest < Minitest::test
  def test_play
    assert WordSynth
    assert Effects
  end
end
