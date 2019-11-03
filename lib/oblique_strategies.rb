# frozen_string_literal: true

require 'oblique_strategies/version'

class ObliqueStrategies
  class Error < StandardError; end

  DEFAULT_STRATEGY_PATH = File.join(File.absolute_path(__dir__), '..', 'resources', 'text_files', 'edition-01.txt')

  # The argument is an options hash, not true named arguments :(
  # That's intentional - it gives us 1.9 support :-)
  def initialize(options = {})
    default_options = {path: DEFAULT_STRATEGY_PATH}
    options = default_options.merge(options)
    @deck = File.readlines(options[:path]).map(&:chomp).map(&:strip)
  end

  # Draw a random card from the Array
  def card
    @deck.sample
  end

  # Class-level shortcut for creating a deck, and quickly drawing a random card.
  def self.card
    new.card
  end
end
