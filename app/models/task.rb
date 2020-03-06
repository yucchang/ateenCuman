class Task < ApplicationRecord
  validates :title, presence: true

  enum priority: { High: 0, Mid: 1, Low: 2}
  enum status: { Pending: 0, Processing: 1, Done: 2}

  scope :incomplete, -> { where(status: [0, 1]) }
end
