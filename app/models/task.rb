class Task < ApplicationRecord
  validates :title, presence: true

  enum priority: { High: 0, Medium: 1, Low: 2}
  enum status: { Pending: 0, Processing: 1, Done: 2}
end
