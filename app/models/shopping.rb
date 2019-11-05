class Shopping < ApplicationRecord
  enum status: { open: 0, done: 1 }

end
