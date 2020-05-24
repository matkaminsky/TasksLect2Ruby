require 'minitest/autorun'
require_relative 'acronym'

# Convert a phrase to its acronym.
# Techies love their TLA (Three Letter Acronyms)!
# Help generate some jargon by writing a program that converts a
# long name like Portable Network Graphics to its acronym (PNG).

class AcronymTest < Minitest::Test
  def test_basic
    assert_equal "PNG", Acronym.abbreviate('Portable Network Graphics')
  end

  def test_lowercase_words
    assert_equal "ROR", Acronym.abbreviate('Ruby on Rails')
  end

  def test_punctuation
    assert_equal "FIFO", Acronym.abbreviate('First In, First Out')
  end

  def test_all_caps_word
    assert_equal "GIMP", Acronym.abbreviate('GNU Image Manipulation Program')
  end

  def test_punctuation_without_whitespace
    assert_equal "CMOS", Acronym.abbreviate('Complementary metal-oxide semiconductor')
  end

  def test_very_long_abbreviation
    assert_equal "ROTFLSHTMDCOALM", Acronym.abbreviate('Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me')
  end

  def test_consecutive_delimiters
    assert_equal "SIMUFTA", Acronym.abbreviate('Something - I made up from thin air')
  end
end
