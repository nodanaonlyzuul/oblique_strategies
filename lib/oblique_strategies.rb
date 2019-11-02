# frozen_string_literal: true

require 'oblique_strategies/version'

class ObliqueStrategies
  class Error < StandardError; end

  DEFAULT_STRATEGY_PATH = File.join(File.absolute_path(__dir__), '..', 'resources', 'text_files', 'edition-01.txt')

  def initialize(path: DEFAULT_STRATEGY_PATH)
    @deck = File.readlines(path).map(&:chomp).map(&:strip)
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
