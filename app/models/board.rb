class Board < ApplicationRecord
  validates :name, :email, :height, :width, :number_of_mine, presence: true

  before_save :draw

  private

  def draw
    board = Array.new(self.height) { Array.new(self.width, 0) }

    self.number_of_mine.times do
      x = rand(self.height)
      y = rand(self.width)

      redo if board[x][y] == 1

      board[x][y] = 1
    end

    self.data = board
  end
end
