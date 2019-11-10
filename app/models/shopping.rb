class Shopping < ApplicationRecord
  enum status: { open: 0, done: 1 }
  enum urgent: { normal: 0, dringend: 1 }

  scope :open, -> { where.not(status: 1) }
end
