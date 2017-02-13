class Game < ApplicationRecord
  validates :players, numericality: {greater_than_or_equal_to: 0}
  has_one :orchard
  has_many :fruits, through: :orchard

  default_scope { self.ordered_by_last_recently_played }

  # return Game::ActiveRecord_Relation
  def self.ordered_by_last_recently_played
    self.order(updated_at: :desc)
  end

  def self.recent
    start_range = 1.week.ago
    stop_range = Time.now
    self.where created_at: [start_range..stop_range]
  end

  def add_player
    @players += 1
  end

  def remove_player
    raise RuntimeError.new "No more player to be removed" if @players <= 0
    @players -= 1
  end

end
